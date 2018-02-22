<?php
	$root = "../../";
	require "../module/template/setting.php";
	
	$servername="localhost";
	$username="root";
	$password="";
	$dbname="saptest";
	
	$con=new mysqli($servername,$username,$password,$dbname);
	
	if($con->connect_error)
	{
		die("Failed: ".$conn->connect_error);
	}
	
	$uname=$_POST["username"];
	$pass=$_POST["password"];
	
	$sql="SELECT * FROM login_data WHERE loginuname='".$uname."' AND loginpwd='".$pass."'";
	
	if($con->query($sql)==TRUE)
	{
		echo header('Location: ../index.php');
	}
	else
	{
		echo "Error: ".$sql."<br>".$con->error;
	}
	
	$con->close();
?>