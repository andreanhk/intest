<?php
	echo "TEST";
	session_start();
	session_destroy();
	echo header('Location: ../module/home/login.php');
?>