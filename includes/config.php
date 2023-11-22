<?php
ob_start(); //Turns on output buffering 
session_start();

date_default_timezone_set("Europe/Prague");

//try {
//    $con = new PDO("mysql:dbname=VideoTube;host=localhost", "newuser", "yes");
//    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
//}
//catch (PDOException $e) {
//    echo "Connection failed: " . $e->getMessage();
//}

$db_username = "C##VideoTube";
$db_password = "123";
try{
    $con = new PDO("odbc:ORCL3",$db_username,$db_password); 
	$con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
}catch(PDOException $e){
   echo "Connection failed: " . $e->getMessage();
}








?>