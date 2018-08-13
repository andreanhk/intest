<?php

$con = mysqli_connect("localhost","root","","sappman");
$result = mysqli_query($con,"SELECT * FROM user");

while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
{
	echo "Forbidden";
	die();
	$md5psw = md5($row['userpwd']);
	mysqli_query ($con,"UPDATE user SET userpwd='$md5psw' WHERE id='$row[id]'");
}

?>