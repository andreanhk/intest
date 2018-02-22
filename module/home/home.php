<?php
	$root = "../../";
	require "../template/setting.php";
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

<title>SAP Testing - Beranda</title>   

<meta name="description" content="SAP Documentation" /> 

<!-- Mobile Specifics -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="HandheldFriendly" content="true"/>
<meta name="MobileOptimized" content="320"/>   

<!-- Mobile Internet Explorer ClearType Technology -->
<!--[if IEMobile]>  <meta http-equiv="cleartype" content="on">  <![endif]-->

<!-- Bootstrap -->
<link href="<?php echo $root; ?>assets/css/bootstrap.css" rel="stylesheet">

<!-- Google Font -->
<link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900' rel='stylesheet' type='text/css'>

<!-- Fav Icon -->
<link rel="icon" href="<?php echo $root; ?>assets/images/samator.ico" type="image/ico">

<body>
	<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
		<a class="navbar-brand">
			<img alt="Samator" src="<?php echo $root; ?>assets/images/s-logo.png" width="30" height="30">
		</a>	
		<h5 class="my-0 mr-md-auto font-weight-normal">SAP Internal Testing</h5>
			<nav class="my-2 my-md-0 mr-md-3 navbar-inverse">
				<a class="p-2 text-dark-active" href="<?php echo $root; ?>module/home/home.php">Beranda</a>
				<a class="p-2 text-dark" href="<?php echo $root; ?>module/home/master.php">Master</a>
				<a class="p-2 text-dark" href="<?php echo $root; ?>module/home/checklist.php">Checklist</a>
				<a class="p-2 text-dark" href="<?php echo $root; ?>module/home/uat.php">UAT</a>
			</nav>
		<a class="btn btn-danger" href="<?php echo $root; ?>module/home/login.php">Logout</a>
	</div>
		
	<div class="container container-fluid">
		<div class="row">
			<div class="col-md-4 text-center"><h3>Master Data</h3></div>
			<div class="col-md-4 text-center"><h3>Checklist</h3></div>
			<div class="col-md-4 text-center"><h3>User Acceptance Test</h3></div>
		</div>
	</div>
</body>