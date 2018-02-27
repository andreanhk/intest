<?php
	class Connection{
		private	$host="localhost";
				$username="root";
				$password="";
				$db="saptest";
	
	/*$con=mysqli_connect("$host","$username","$password");
	mysqli_select_db("$con","$db")or die("No database was selected");
	
	$username=$_GET['inputUname'];
	$password=$_GET['inputPwd'];
	
	$username = stripslashes($inputUname);
	$password = stripslashes($inputPwd);
	$username = mysql_real_escape_string($inputUname);
	$password = mysql_real_escape_string($inputPwd);
	 
	/*$sql="SELECT * FROM login_data WHERE loginuname='$username' and loginpwd='$password'";
	$result=$con->query($sql);
	
	if ($result->num_rows > 0)
	{
		while($row=$result->fetch_assoc())
		{
			echo "<script>window.location='home.php';</script>";
		}
	}
		else
		{
			echo "Error";
		}
	
	$con->close();*/
	
	/*$result=mysql_query($sql);
	$count=mysql_num_rows($result);
	
	while($row=$result->fetch_assoc())
	{
		echo $row['classtype']."<br>";
	}
	
	if($count==1)
		{
			echo "<script>window.location = 'home.php';</script>";
		}
	else
		{
			echo "Incorrect";
		}*/
?>