<?php
	define("TEMPLATE", "module/template/");
	define("HOME", "module/home/");
	define("CONNECTION","connection/");
		
	session_start();
	if (isset($_SESSION['message_error'])) {
		echo "<script> alert('$_SESSION[message_error]') </script>";
		unset($_SESSION['message_error']);
	}
	
	define("DB_HOST","localhost");
	define("DB_USER","root");
	define("DB_PASS","samator123");
	define("DB_NAME","sappman");
	
	$con = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
?>