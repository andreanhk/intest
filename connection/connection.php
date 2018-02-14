<?php
	$host="localhost";
	$username="root";
	$password="admin";
	$db="saptest";
	
	mysql_connect("$host", "$inputUname", "$inputPwd")or die("Failed to connect");
	mysql_select_db("$db")or die("No database was selected");
	
	$username=$_POST['inputUname'];
	$password=$_POST['inputPwd'];
	
	$username = stripslashes($inputUname);
	$password = stripslashes($inputPwd);
	$username = mysql_real_escape_string($inputUname);
	$password = mysql_real_escape_string($inputPwd);
	 
	$sql="SELECT * FROM login_data WHERE loginuname='$username' and loginpwd='$password'";
	$result=mysql_query($sql);
	$count=mysql_num_rows($result);
	 
	if($count==1)
		{
			echo "<script>window.location = 'home.php';</script>";
		}
	else
		{
			echo "Incorrect";
		}
	
	
?>