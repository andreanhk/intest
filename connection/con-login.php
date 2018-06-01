<?php
	$root = "../../";
	require "../module/template/setting.php";
	
	$servername="localhost";
	$username="root";
	$password="";
	$dbname="saptest";
	
	$con = new mysqli($servername,$username,$password,$dbname);
	
	if($con->connect_error)
	{
		die("Failed: ".$con->connect_error);
	}
	
	session_start();
	
	$uname = mysqli_real_escape_string($con,$_POST["username"]);
	$pass = mysqli_real_escape_string($con,md5($_POST["password"]));
	
	$query = "SELECT * FROM user WHERE userid='".$uname."' AND userpwd='".$pass."'";
	
	$result = mysqli_query($con,$query) or die(mysqli_error($con));
	$count = mysqli_num_rows($result);
	
	if ($count==1)
	{
		while ($row = mysqli_fetch_object($result))
		{
			$_SESSION["username"]=$row->userid;
			$_SESSION["longname"]=$row->userlname;
			$_SESSION["modul"]=$row->usermodul;
		}

		echo header('Location: ../index.php');
	}
	else
	{
		//echo header('Location: ../module/home/login.php');
		echo '<script language="javascript">';
		echo 'alert("Periksa kembali username dan password anda!")';
		echo '</script>';
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