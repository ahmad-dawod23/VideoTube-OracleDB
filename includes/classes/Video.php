<?php
class Video {

    private $con, $sqlData, $userLoggedInObj;

    public function __construct($con, $input, $userLoggedInObj) {
        $this->con = $con;
        $this->userLoggedInObj = $userLoggedInObj;

        if(is_array($input)) {
            $this->sqlData = $input;
        }
        else {
            $query = $this->con->prepare("SELECT * FROM videos WHERE id = :id");
            $query->bindParam(":id", $input);
            $query->execute();

            $this->sqlData = $query->fetch(PDO::FETCH_ASSOC);
        }
    }
    
    public function getId() {
        return $this->sqlData["ID"];
    }

    public function getUploadedBy() {
        return $this->sqlData["UPLOADEDBY"];
    }

    public function getTitle() {
        return $this->sqlData["TITLE"];
    }

    public function getDescription() {
        return $this->sqlData["DESCRIPTION"];
    }

    public function getPrivacy() {
        return $this->sqlData["PRIVACY"];
    }

    public function getFilePath() {
        return $this->sqlData["FILEPATH"];
    }

    public function getCategory() {
        return $this->sqlData["CATEGORY"];
    }

    public function getUploadDate() {
        $date = $this->sqlData["UPLOADDATE"];
        return date("M j, Y", strtotime($date));
    }

    public function getTimeStamp() {
        $date = $this->sqlData["UPLOADDATE"];
        return date("M jS, Y", strtotime($date));
    }

    public function getViews() {
        return $this->sqlData["VIEWS"];
    }

    public function getDuration() {
        return $this->sqlData["DURATION"];
    }

    public function incrementViews() {
        $query = $this->con->prepare("UPDATE videos SET views=views+1 WHERE id=:id");
        $query->bindParam(":id", $videoId);

        $videoId = $this->getId();
        $query->execute();

        $this->sqlData["VIEWS"] = $this->sqlData["VIEWS"] + 1;
    }

    public function getLikes() {
        $query = $this->con->prepare("SELECT count(*) as count FROM likes WHERE videoId = :videoId");
        $query->bindParam(":videoId", $videoId);
        $videoId = $this->getId();
        $query->execute();

        $data = $query->fetch(PDO::FETCH_ASSOC);
		return $data["COUNT"];
    }

    public function getDislikes() {
        $query = $this->con->prepare("SELECT count(*) as COUNT FROM dislikes WHERE videoId = :videoId");
        $query->bindParam(":videoId", $videoId);
        $videoId = $this->getId();
        $query->execute();

        $data = $query->fetch(PDO::FETCH_ASSOC);
        return $data["COUNT"];
    }

    public function like() {
        $id = $this->getId();
        $username = $this->userLoggedInObj->getUsername();

        if($this->wasLikedBy()) {
            // User has already liked
            $query = $this->con->prepare("DELETE FROM likes WHERE username=:username AND videoId=:videoId");
            $query->bindParam(":username", $username);
            $query->bindParam(":videoId", $id);
            $query->execute();

            $result = array(
                "likes" => -1,
                "dislikes" => 0
            );
            return json_encode($result);
        }
        else {
            $query = $this->con->prepare("DELETE FROM dislikes WHERE username=:username AND videoId=:videoId");
            $query->bindParam(":username", $username);
            $query->bindParam(":videoId", $id);
            $query->execute();
            $count = $query->rowCount();

            $query = $this->con->prepare("INSERT INTO likes(username, videoId) VALUES(:username, :videoId)");
            $query->bindParam(":username", $username);
            $query->bindParam(":videoId", $id);
            $query->execute();

            $result = array(
                "likes" => 1,
                "dislikes" => 0 - $count
            );
            return json_encode($result);
        }
    }

    public function dislike() {
        $id = $this->getId();
        $username = $this->userLoggedInObj->getUsername();

        if($this->wasDislikedBy()) {
            // User has already liked
            $query = $this->con->prepare("DELETE FROM dislikes WHERE username=:username AND videoId=:videoId");
            $query->bindParam(":username", $username);
            $query->bindParam(":videoId", $id);
            $query->execute();

            $result = array(
                "likes" => 0,
                "dislikes" => -1
            );
            return json_encode($result);
        }
        else {
            $query = $this->con->prepare("DELETE FROM likes WHERE username=:username AND videoId=:videoId");
            $query->bindParam(":username", $username);
            $query->bindParam(":videoId", $id);
            $query->execute();
            $count = $query->rowCount();

            $query = $this->con->prepare("INSERT INTO dislikes(username, videoId) VALUES(:username, :videoId)");
            $query->bindParam(":username", $username);
            $query->bindParam(":videoId", $id);
            $query->execute();

            $result = array(
                "likes" => 0 - $count,
                "dislikes" => 1
            );
            return json_encode($result);
        }
    }

    public function wasLikedBy() {
        $query = $this->con->prepare("SELECT * FROM likes WHERE username=:username AND videoId=:videoId");
        $query->bindParam(":username", $username);
        $query->bindParam(":videoId", $id);

        $id = $this->getId();

        $username = $this->userLoggedInObj->getUsername();
        $query->execute();

        return $query->rowCount() > 0;
    }

    public function wasDislikedBy() {
        $query = $this->con->prepare("SELECT * FROM dislikes WHERE username=:username AND videoId=:videoId");
        $query->bindParam(":username", $username);
        $query->bindParam(":videoId", $id);
        $id = $this->getId();
        $username = $this->userLoggedInObj->getUsername();
        $query->execute();
        return $query->rowCount() > 0;
		
    }

    public function getNumberOfComments() {
        $query = $this->con->prepare("SELECT count(*) as COM FROM comments WHERE videoId=:videoId");
        $query->bindParam(":videoId", $id);
        $id = $this->getId();
        $query->execute();
		$sqlData = $query->fetch(PDO::FETCH_ASSOC);
		$comnum = intval($sqlData["COM"]);
        return $comnum;
    }

    public function getComments() {
        $query = $this->con->prepare("SELECT * FROM comments WHERE videoId=:videoId AND responseTo is null ORDER BY datePosted DESC");
        $query->bindParam(":videoId", $id);

        $id = $this->getId();
        $query->execute();

        $comments = array();

        while($row = $query->fetch(PDO::FETCH_ASSOC)) {
            $comment = new Comment($this->con, $row, $this->userLoggedInObj, $id);
            array_push($comments, $comment);
        }

        return $comments;
    }

    public function getThumbnail() {
        $query = $this->con->prepare("SELECT filePath FROM thumbnails WHERE videoId=:videoId AND selected=1");
        $query->bindParam(":videoId", $videoId);
        $videoId = $this->getId();
        $query->execute();

        return $query->fetchColumn();
    }

}
?>