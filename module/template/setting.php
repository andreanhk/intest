<?php
	define("TEMPLATE", "module/template/");
	define("HOME", "module/home/");
	define("CONNECTION","connection/");
		
	session_start();
	if (isset($_SESSION['message_error'])) {
		echo "<script> alert('$_SESSION[message_error]') </script>";
		unset($_SESSION['message_error']);
	}
	
	$con = mysqli_connect("localhost","root","","saptest");
?>