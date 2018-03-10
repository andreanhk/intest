<?php
	$root = "../../";
	require "../template/setting.php";
	
	session_start();
	if(isset($_SESSION['username']) && $_SESSION['username']!="")
	{
		//echo($_SESSION['username']);
	}
	else
	{
		header("Location: login.php");
	}
	
	$idba = "";
	$nameba = "";
	$result1 = "";
	
	if (isset($_POST['submit']))
	{
		$idba = $_POST['new_idba'];
		$nameba = $_POST['new_nameba'];
		
		$query = 'SELECT * FROM m_ba WHERE idba="'.$idba.'"';
		$con = mysqli_connect("localhost","root","","saptest");
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = 'INSERT INTO m_ba(idba,nameba) VALUES ("'.$idba.'","'.$nameba.'")';
			$result1 = mysqli_query($con,$query);
			header("location:m-ba.php");
		}
		else
		{
			echo '<script language="javascript">';
			echo 'alert("Kode BA tersebut sudah ada!")';
			echo '</script>';
		}
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

<title>Master Data: Business Area</title>

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

<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
		<div class="navbar-header">
		  <img alt="Samator" class="navbar-text" src="<?php echo $root; ?>assets/images/s-logo.png" width="20" height="20">
		  <a class="navbar-brand">SAP Internal Testing</a>
		</div>
		
		<ul class="nav navbar-nav navbar-right">
			<li><a href="<?php echo $root; ?>module/home/home.php">Beranda</a></li>
			<li class="dropdown active">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Master
				<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<?php echo $root; ?>module/home/m-user.php">User</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-modul.php">Modul</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-ba.php">Business Area</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-check.php">Checklist</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-uat.php">User Acceptance Test</a></li>
				</ul>
			</li>
			<li><a href="<?php echo $root; ?>module/home/checklist.php">Checklist</a></li>
			<li><a href="<?php echo $root; ?>module/home/uat.php">U A T</a></li>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
				<?php echo $_SESSION["longname"]; ?>
				<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<?php echo $root; ?>module/home/user.php">Pengaturan</a></li>
					<li><a href="../../connection/logout.php"><b>Logout</b></a></li>
				</ul>
			</li>
		</ul>
		
	  </div>
	</nav>

	<div class="container container-fluid">
		<h1>Master Data Business Area
			<?php
				if ($_SESSION['username']=="Admin")
				{
			?>
			<!--<a class="btn btn-danger pull-right"><span class="glyphicon glyphicon-remove"></span></a>-->
			<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#modaladdba"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Business Area Baru</b></button>
			
			<!-- Modal Add User -->
			<div id="modaladdba" class="modal fade" role="dialog">
			  <div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
				  <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Tambah Business Area Baru</h4>
				  </div>
				  <div class="modal-body"><h5>
					<form action="" method="POST" name="form_addba">
						<label for="new_idba">Kode business area (4 digit):</label>
						<input type="text" id="new_idba" name="new_idba" class="form-control" placeholder="Contoh: 3000" required="" autofocus=""><br>
						<label for="new_nameba">Nama perusahaan/cabang:</label>
						<input type="text" id="new_nameba" name="new_nameba" class="form-control" placeholder="Contoh: Samator Gas Industri Pusat" required=""><br>
						
						<br><br>
						<div class="modal-footer">
							<button class="btn btn-default btn-success" type="submit" name="submit" id="submit" method="POST" action="m-user.php">Tambah</button>
							<button type="button" class="btn btn-default btn-danger" data-dismiss="modal">Batal</button>
						</div>
					</form>
				  </div>
				  
				</div>

			  </div>
			</div>
			<?php
				}
				else
				{
					
				}
			?>
		</h1>
	</div><br>
	
	<div class="container container-fluid">
		<table class="table table-hover text-center">
			<thead>
				<tr>
					<td><b>Kode BA</b></td>
					<td><b>Nama BA</b></td>
				</tr>
			</thead>
			<tbody>
			<?php
				$connection = mysql_connect('localhost', 'root', '');
				mysql_select_db('saptest');

				$query = "SELECT * FROM m_ba";
				$result = mysql_query($query);

				while($row = mysql_fetch_array($result))
				{
					echo "<tr>";
						echo "<td style:'border=1px solid black'>".$row['idba']."</td>";
						echo "<td style:'border=1px solid black'>".$row['nameba']."</td>";
					echo "</tr>";
				}

				mysql_close();
			?>
			</tbody>
		</table>
	</div>
</body>