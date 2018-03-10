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

<title>Master Data: Checklist</title>

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
		<h1>Master Data Checklist
			
			<?php
				if ($_SESSION['username']=="Admin")
				{
			?>
			<!--<a class="btn btn-danger pull-right"><span class="glyphicon glyphicon-remove"></span></a>-->
			<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#modaladdchecklist"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Checklist Baru</b></button>
			
			<!-- Modal Add Checklist -->
			<div id="modaladdchecklist" class="modal fade" role="dialog">
			  <div class="modal-dialog">

				<!-- Open modal add checklist -->
				<div class="modal-content">
				  <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Tambah Checklist Baru</h4>
				  </div>
				  <div class="modal-body"><h5>
					<label for="new_ctype">Tipe custom:</label>
					<input type="text" id="new_ctype" name="new_ctype" class="form-control" placeholder="Contoh: Enterprise Structure" required="" autofocus=""><br>
					<label for="new_cdesc">Deskripsi custom:</label>
					<input type="text" id="new_cdesc" name="new_cdesc" class="form-control" placeholder="Contoh: Define Business Area" required=""><br>
					<label for="new_ctcode">Tcode custom:</label>
					<input type="text" id="new_ctcode" name="new_ctcode" class="form-control" placeholder="Contoh: SPRO" required=""><br>
					<label for="new_ctable">Tabel:</label>
					<input type="text" id="new_ctable" name="new_ctable" class="form-control" placeholder="Contoh: V_TGSB" required=""><br>
					<label for="new_cstat">Status custom:</label>
					<input type="text" id="new_cstat" name="new_cstat" class="form-control" placeholder="Contoh: Create/Check" required=""><br>
					<label for="new_cmodul">Modul checklist:</label>
					<?php
						mysql_connect('localhost', 'root', '');
						mysql_select_db('saptest');

						$sql = "SELECT idmodul FROM m_modul";
						$result = mysql_query($sql);

						echo "<select name='idmodul'>";
						while ($row = mysql_fetch_array($result)) {
							echo "<option value='" . $row['idmodul'] . "'>" . $row['idmodul'] . "</option>";
						}
						echo "</select>";
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
		
		<?php
				mysql_connect('localhost', 'root', '');
				mysql_select_db('saptest');

				$sql = "SELECT idmodul FROM m_modul";
				$result = mysql_query($sql);

				echo "<select name='idmodul'>";
				while ($row = mysql_fetch_array($result))
				{
					echo "<option value='" . $row['idmodul'] . "'>" . $row['idmodul'] . "</option>";
				}
				echo "</select>";
			?>
		
	</div><br>
	
	<div class="container container-fluid">
		<table class="table table-hover text-center">
			<thead>
				<tr>
					<td><b>Custom Type</b></td>
					<td><b>Custom Description</b></td>
					<td><b>Tcode</b></td>
					<td><b>Table</b></td>
					<td><b>Custom Status</b></td>
				</tr>
			</thead>
			<tbody>
			<?php
				$connection = mysql_connect('localhost', 'root', '');
				mysql_select_db('saptest');

				$query = "SELECT ctype,ctypedesc,ctcode,ctable,cstat FROM m_check";
				$result = mysql_query($query);

				while($row = mysql_fetch_array($result))
				{
					echo "<tr>";
						echo "<td style:'border=1px solid black'>".$row['ctype']."</td>";
						echo "<td style:'border=1px solid black'>".$row['ctypedesc']."</td>";
						echo "<td style:'border=1px solid black'>".$row['ctcode']."</td>";
						echo "<td style:'border=1px solid black'>".$row['ctable']."</td>";
						echo "<td style:'border=1px solid black'>".$row['cstat']."</td>";
					echo "</tr>";
				}

				mysql_close();
			?>
			</tbody>
		</table>
	</div>
</body>