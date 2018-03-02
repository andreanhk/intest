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
	
	session_start();
	
	$uname=$_POST["username"];
	$pass=$_POST["password"];
	
	$sql="SELECT * FROM user WHERE userid='".$uname."' AND userpwd='".$pass."'";
	
	$result=mysqli_query($con,$sql) or die(mysqli_error($con));
	$count=mysqli_num_rows($result);
	
	if ($count==1)
	{
		
		while ($row = mysqli_fetch_object($result))
		{
			$_SESSION["username"]=$row->userid;
			$_SESSION["longname"]=$row->userlname;
		}

		echo header('Location: ../index.php');
	}
	else
	{
		echo header('Location: ../module/home/login.php');
	}
	
	/*if($con->query($sql)==TRUE)
	{
		echo header('Location: ../index.php');
	}
	else
	{
		echo "Error: ".$sql."<br>".$con->error;
	}*/
	
	$con->close();
?>