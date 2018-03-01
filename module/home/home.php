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

<title>Beranda</title>

<!-- Mobile Specifics -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="HandheldFriendly" content="true"/>
<meta name="MobileOptimized" content="320"/>   

<!-- Mobile Internet Explorer ClearType Technology -->
<!--[if IEMobile]>  <meta http-equiv="cleartype" content="on">  <![endif]-->

<!-- Bootstrap -->
<link href="<?php echo $root; ?>assets/css/bootstrap.min.css" rel="stylesheet">

<!-- Javascript -->
<script src="<?php echo $root; ?>assets/js/jquery.min.js"></script>
<script src="<?php echo $root; ?>assets/js/bootstrap.min.js"></script>

<!-- Fav Icon -->
<link rel="icon" href="<?php echo $root; ?>assets/images/samator.ico" type="image/ico">

<?php
	session_start();
	if(isset($_SESSION['username']) && $_SESSION['username']!="")
	{
		echo($_SESSION['username']);
	}
	else
	{
		//go back if username is not set
		header("Location: login.php");
	}
?>

<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
		<div class="navbar-header">
		  <img alt="Samator" class="navbar-text" src="<?php echo $root; ?>assets/images/s-logo.png" width="20" height="20">
		  <a class="navbar-brand">SAP Internal Testing</a>
		</div>
		
		<ul class="nav navbar-nav navbar-right">
			<li class="active"><a href="<?php echo $root; ?>module/home/home.php">Beranda</a></li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Master
				<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<?php echo $root; ?>module/home/m-modul.php">Modul</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-user.php">User</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-ba.php">Business Area</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-check.php">Checklist</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-uat.php">User Acceptance Test</a></li>
				</ul>
			</li>
			<li><a href="<?php echo $root; ?>module/home/checklist.php">Checklist</a></li>
			<li><a href="<?php echo $root; ?>module/home/uat.php">U A T</a></li>
			<!--<li><a href="<?php echo $root; ?>module/home/login.php"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a></li>-->
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
				<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<?php echo $root; ?>module/home/user.php">Ganti Password</a></li>
					<li><a href="<?php echo $root; ?>module/home/login.php">Logout</a></li>
					
				</ul>
			</li>
			<!--&nbsp&nbsp<button class="btn btn-danger navbar-btn" onclick="window.location.href='login.php'">Logout</button>&nbsp&nbsp-->
		</ul>
		
	  </div>
	</nav>
	
	<div class="container container-fluid">
		<div class="col-lg-3 pull-right">
			<h4>Selamat Datang $_SESSION</h4>
		</div>
	</div>
	
	<div class="container">
		<br>
		<h3>Visi Samator:</h3>
		<p>Menjadi perusahaan yang paling diidamkan, terus bertumbuh dan berkembang
		dengan mendayagunakan sumber daya alam yang  memberikan manfaat bagi kehidupan.</p>
		<br><br>
		<h3>Misi Samator:</h3>
		<p>1. Memberikan yang terbaik bagi <i>stakeholders</i>.</p>
		<p>2. Berintegritas dan berkomitmen terhadap kualitas, <i>Health Safety Environment</i>, dan <i>Good Corporate Governance</i>.</p>
		<p>3. Meningkatkan <i>Total Customer Solution</i>.</p>
		<p>4. Memperluas wilayah usaha dan mengembangkan produk, layanan, serta teknologi.</p>
	</div><br><br>
</body>