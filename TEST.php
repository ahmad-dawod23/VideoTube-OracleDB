<?php


$tns = "  
(DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = FREEPDB1)
    )
  )
       ";
$db_username = "C##VideoTube";
$db_password = "123";
try{
    $conn = new PDO("odbc:ORCL2",$db_username,$db_password); 
	echo "successfull connection";
	$query = $conn->prepare("SELECT * FROM users WHERE username = 'reece-kenney'");
	$query->execute();
}catch(PDOException $e){
   echo "Connection failed: " . $e->getMessage();
}





?>
                