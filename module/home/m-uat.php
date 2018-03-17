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

<title>Master Data: User Acceptance Test</title>

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
		<h1>Master Data User Acceptance Test
		<?php
				if ($_SESSION['username']=="Admin")
				{
			?>
			<!--<a class="btn btn-danger pull-right"><span class="glyphicon glyphicon-remove"></span></a>-->
			<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#modaladd_uatscn"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Skenario Baru</b></button>
			
			<!-- Modal Add User -->
			<div id="modaladd_uatscn" class="modal fade" role="dialog">
			  <div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
				  <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Tambah Skenario UAT Baru</h4>
				  </div>
				  <div class="modal-body"><h5>
					<label for="new_scnname">Nama skenario:</label>
					<input type="text" id="new_scnname" name="new_scnname" class="form-control" placeholder="Contoh: Pembelian Bahan Baku" required="" autofocus=""><br>
					<label for="new_scndesc">Deskripsi skenario:</label>
					<input type="text" id="new_scndesc" name="new_scndesc" class="form-control" placeholder="Contoh: Tes Pembelian Bahan Baku dari Vendor" required=""><br>
					<label for="new_scnmodul">Modul skenario:</label>
					<?php
						$con = mysqli_connect("localhost","root","","saptest");

						$sql = "SELECT idmodul FROM m_modul";
						$result = mysqli_query($con,$sql);

						echo "<select name='idmodul'>";
						while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
							echo "<option value='" . $row['idmodul'] . "'>" . $row['idmodul'] . "</option>";
						}
						echo "</select>";
						
						$con->close();
					?>
				  </div>
				  <div class="modal-footer">
					<button type="button" class="btn btn-default btn-success" type="submit" data-dismiss="modal" href="#">Tambah</button>
					<button type="button" class="btn btn-default btn-danger" data-dismiss="modal">Batal</button>
				  </div>
				</div>

			  </div>
			</div>
			
			<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#modaladd_uatstep"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Step Baru</b></button>
			
			<!-- Modal Add Step Baru -->
			<div id="modaladd_uatstep" class="modal fade" role="dialog">
			  <div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
				  <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Tambah Step UAT Baru</h4>
				  </div>
				  <div class="modal-body"><h5>
					<label for="new_stepname">Nama step:</label>
					<input type="text" id="new_scnname" name="new_stepname" class="form-control" placeholder="Contoh: Pembelian Bahan Baku" required="" autofocus=""><br>
					<label for="new_scndesc">Deskripsi step:</label>
					<input type="text" id="new_scndesc" name="new_stepdesc" class="form-control" placeholder="Contoh: Tes Pembelian Bahan Baku dari Vendor" required=""><br>
					<label for="new_scnmodul">Skenario step:</label>
					<?php
						$con = mysqli_connect("localhost","root","","saptest");

						$sql = "SELECT uat_scn FROM m_uat_scn";
						$result = mysqli_query($con,$sql);

						echo "<select name='uat_scn'>";
						while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
						{
							echo "<option value='" . $row['uat_scn'] . "'>" . $row['uat_scn'] . "</option>";
						}
						echo "</select>";
						
						$con->close();
					?>
				  </div>
				  <div class="modal-footer">
					<button type="button" class="btn btn-default btn-success" type="submit" data-dismiss="modal" href="#">Tambah</button>
					<button type="button" class="btn btn-default btn-danger" data-dismiss="modal">Batal</button>
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
					<td><b>Modul</b></td>
					<td><b>Nama Skenario</b></td>
					<td><b>Deskripsi Skenario</b></td>
				</tr>
			</thead>
			<tbody>
			<?php
				$con = mysqli_connect("localhost","root","","saptest");

				$query = "SELECT uat_modul,uat_scn,uat_desc FROM m_uat_scn";
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style:'border=1px solid black'>".$row['uat_modul']."</td>";
						echo "<td style:'border=1px solid black'>".$row['uat_scn']."</td>";
						echo "<td style:'border=1px solid black' class='col-md-7'>".$row['uat_desc']."</td>";
					if ($_SESSION['username']=="Admin")
						{
			?>
							<td><button type='button' class='btn btn-info btn-xs' data-toggle='modal' data-target='#modalEditUser'><span class='glyphicon glyphicon-pencil'></span></button>&nbsp
							<button type='button' class='btn btn-danger btn-xs' data-toggle='modal' data-target='#modalDelUser'><span class='glyphicon glyphicon-trash'></span></button></td>
			<?php
						}
						else
						{
							
						}
					echo "</tr>";
				}

				$con->close();
			?>
			</tbody>
		</table>
	</div>
</body>