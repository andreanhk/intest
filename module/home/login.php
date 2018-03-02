<?php
	$root = "../../";
	require "../template/setting.php";
	
	session_start();
	if(isset($_SESSION['username']) && $_SESSION['username']!="")
	{
		header("Location: home.php");
	}
	else
	{
		//header("Location: login.php");
	}
?>

<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html class="no-js lt-ie9 lt-ie8" lang="en"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html class="no-js lt-ie9" lang="en"><![endif]-->
<!--[if (IE 9)]><html class="no-js ie9" lang="en"><![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
<head>

<!-- Meta Tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>Login</title>

<!-- Mobile Specifics -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="HandheldFriendly" content="true"/>
<meta name="MobileOptimized" content="320"/>   

<!-- Mobile Internet Explorer ClearType Technology -->
<!--[if IEMobile]>  <meta http-equiv="cleartype" content="on">  <![endif]-->

<!-- Bootstrap -->
<link href="<?php echo $root; ?>assets/css/bootstrap.css" rel="stylesheet">

<!-- Signin CSS -->
<link href="<?php echo $root; ?>assets/css/login.css" rel="stylesheet">

<!-- Fav Icon -->
<link rel="icon" href="<?php echo $root; ?>assets/images/samator.ico" type="image/ico">

</head>

<body class="text-center">
	<form class="form-signin" method="POST" action="<?php echo $root; ?>connection/con-login.php">
		<img class="mb-4" src="<?php echo $root; ?>assets/images/s-logo.png" alt="" width="72" height="72">
			<h1 class="h3 mb-3 font-weight-normal"></h1>
		<label for="inputEmail" class="sr-only">Username</label>
		<input type="text" id="username" name="username" class="form-control" placeholder="Username" required="" autofocus="">
		<label for="inputPassword" class="sr-only">Password</label>
		<input type="password" id="password" name="password" class="form-control" placeholder="Password" required="">
		<button class="btn btn-lg btn-info btn-block" type="submit" href="<?php echo $root; ?>module/home/home.php">Login</button>
		<br>
		<p class="mt-5 mb-3 text-muted">© 2018</p>
	</form>
</body>