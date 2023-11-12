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
}catch(PDOException $e){
   echo "Connection failed: " . $e->getMessage();




?>