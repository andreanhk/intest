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

	$scnname = "";
	$scndesc = "";
	$scnNo = "";
	$scnmodul = "";
	$result1 = "";
	
	if (isset($_POST['submit1']))
	{
		$con = mysqli_connect("localhost","root","","saptest");

		$scnname = mysqli_real_escape_string($con, $_POST['new_scnname']);
		$scndesc = mysqli_real_escape_string($con, $_POST['new_scndesc']);
		$scnNo = mysqli_real_escape_string($con, $_POST['new_scnNo']);
		$scnmodul = mysqli_real_escape_string($con, $_POST['uat_modul']);
		
		$query = 'SELECT * FROM m_uat_scn WHERE uat_scn="'.$scnname.'" AND no_scn="'.$scnNo.'"';
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = 'INSERT INTO m_uat_scn(uat_scn, uat_desc, uat_modul, no_scn) VALUES ("'.$scnname.'","'.$scndesc.'","'.$scnmodul.'","'.$scnNo.'")';
			$result1 = mysqli_query($con,$query);
			header("location:m-uat.php");
		}
		else
		{
			echo '<script language="javascript">';
			echo 'alert("Skenario UAT tersebut sudah ada!")';
			echo '</script>';
		}
	}
	
	$stepname = "";
	$steptcode = "";
	$stepuser = "";
	$stepscn = "";
	$stepmodul = "";
	$result2 = "";
	
	if (isset($_POST['submit2']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
		
		$stepname = mysqli_real_escape_string($con, $_POST['new_stepname']);
		$steptcode = mysqli_real_escape_string($con, $_POST['new_steptcode']);
		$stepuser = mysqli_real_escape_string($con, $_POST['new_stepuser']);
		$stepscn = mysqli_real_escape_string($con, $_POST['new_stepscn']);
		$stepmodul = mysqli_real_escape_string($con, $_POST['new_stepmodul']);
		
		$query = 'SELECT * FROM m_uat_step WHERE bp_step="'.$stepname.'" AND stepscn="'.$stepscn.'"';  //Coba JOIN 2 tabel untuk insert value PP02 di table step -> cek value dari tabel scn
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = 'INSERT INTO m_uat_step(bp_step, tcode_step, user_step, modul_step) VALUES ()';
			$result2 = mysqli_query($con,$query);
			header("location:m-uat.php");
		}
		else
		{
			echo '<script language="javascript">';
			echo 'alert("Step UAT tersebut sudah ada di skenario terpilih!")';
			echo '</script>';
		}
	}
	
	if (isset($_GET['del']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
		
		$id = $_GET['id'];
		
		mysqli_query($con,"DELETE FROM m_uat_scn WHERE no_scn='".$id."'");
		mysqli_close($con);
		header("Location:m-uat.php");
	}
		
	if (isset($_POST['editScn']))
	{	
		$con = mysqli_connect("localhost","root","","saptest");
		
		$editscnname = mysqli_real_escape_string($con,$_POST['edit_scnname']);
		$editscndesc = mysqli_real_escape_string($con,$_POST['edit_scndesc']);
		
		$id = mysqli_real_escape_string($con,$_POST['no_scn']);
		
		if(!mysqli_query($con,"UPDATE m_uat_scn SET uat_scn='$editscnname',uat_desc='$editscndesc' WHERE no_scn='$id'"))
		{
			echo mysqli_error($con);
		}
		
		mysqli_close($con);
		#header("Location:m-uat.php");
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

<!-- DataTables -->
<link href="<?php echo $root; ?>assets/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet">
<script src="<?php echo $root; ?>assets/datatables/media/js/jquery.dataTables.min.js"></script>

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
			<a class="btn btn-success text-right pull-right" data-toggle="modal" data-target="#modaladd_uatscn"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Skenario</b></a>
			
			<!-- Modal Add Skenario UAT -->
			<div id="modaladd_uatscn" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Tambah Skenario UAT Baru</h4>
						</div>
						
						<div class="modal-body"><h5>
							<form action="" method="POST" name="form_addscn">
								<label for="new_scnname">Nama skenario:</label>
								<input type="text" id="new_scnname" name="new_scnname" class="form-control" placeholder="Contoh: Pembelian Bahan Baku" required="" autofocus=""><br>
								<label for="new_scndesc">Deskripsi skenario:</label>
								<input type="text" id="new_scndesc" name="new_scndesc" class="form-control" placeholder="Contoh: Tes Pembelian Bahan Baku dari Vendor" required=""><br>
								<label for="new_scnNo">No. skenario:</label>
								<input type="text" id="new_scnNo" name="new_scnNo" class="form-control" placeholder="Contoh: PP01" required=""><br>
								<label for="new_scnmodul">Modul skenario:</label>
								<?php
									$con = mysqli_connect("localhost","root","","saptest");

									$sql = "SELECT idmodul FROM m_modul";
									$result = mysqli_query($con,$sql);

									echo "<select name='uat_modul'>";
									while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
										echo "<option value='" . $row['idmodul'] . "'>" . $row['idmodul'] . "</option>";
									}
									echo "</select>";
									
									$con->close();
								?>
								<div class="modal-footer">
									<button class="btn btn-default btn-success" type="submit" name="submit1" id="submit1" method="POST" action="m-uat.php">Tambah</button>
									<button type="button" class="btn btn-default btn-danger" data-dismiss="modal">Batal</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			
			<a class="btn btn-success text-right" data-toggle="modal" data-target="#modaladd_uatstep"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Step</b></a>
			
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
							<form action="" method="POST" name="form_addstep">
								<label for="new_stepname">Nama step:</label>
								<input type="text" id="new_stepname" name="new_stepname" class="form-control" placeholder="Contoh: Buat Sales Order" required="" autofocus=""><br>
								<label for="new_steptcode">Tcode step:</label>
								<input type="text" id="new_steptcode" name="new_steptcode" class="form-control" placeholder="Contoh: VA01" required=""><br>
								<label for="new_stepuser">User step:</label>
								<input type="text" id="new_stepuser" name="new_stepuser" class="form-control" placeholder="Contoh: Sales Counter" required=""><br>
								<label for="new_stepscn">Skenario step:</label><br />
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
								<br><br>
								<div class="modal-footer">
									<a class="btn btn-default btn-success" type="submit" name="submit2" id="submit2" method="POST" action="m-uat.php?id=<?php echo $row['no_scn']; ?>">Tambah</a>
									<a class="btn btn-default btn-danger" data-dismiss="modal">Batal</a>
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
		<table id="tableMUAT" class="table table-hover text-center table-striped compact">
			<thead>
				<tr>
					<!--<td><b>Modul</b></td>-->
					<td><b>No. Skenario</b></td>
					<td><b>Nama Skenario</b></td>
					<td><b>Deskripsi Skenario</b></td>
					<td class="col-md-1"></td>
				</tr>
			</thead>
			<tbody>
			<?php
				$con = mysqli_connect("localhost","root","","saptest");

				$query = "SELECT * FROM m_uat_scn";
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						//echo "<td style:'border=1px solid black'>".$row['uat_modul']."</td>";
						echo "<td style:'border=1px solid black'>".$row['no_scn']."</td>";
						echo "<td style:'border=1px solid black'>".$row['uat_scn']."</td>";
						echo "<td style:'border=1px solid black' class='col-md-7'>".$row['uat_desc']."</td>";
					if ($_SESSION['username']=="Admin")
						{
			?>
							<!-- Button Edit Scenario UAT -->
							<td><a type='button' class='btn btn-info btn-xs' data-toggle='modal' href="#modalEditScn<?php echo $row['no_scn']; ?>"><span class='glyphicon glyphicon-pencil'></span></a> 
							
							<!-- Modal Edit Scenario UAT -->
							<div id="modalEditScn<?php echo $row['no_scn']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Edit Skenario UAT <?php echo $row['uat_scn']; ?></h4>
										</div>
									  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formEditScn">
												<input type='hidden' name='no_scn' value='<?php echo $row['no_scn']; ?>' />
												<label for="edit_scnname">Edit nama skenario:</label>
												<input type="text" id="edit_scnname" name="edit_scnname" class="form-control" placeholder="Contoh: Pembelian Bahan Baku" required=""><br>
												<label for="edit_scndesc">Edit deskripsi skenario:</label>
												<input type="text" id="edit_scndesc" name="edit_scndesc" class="form-control" placeholder="Contoh: Tes Pembelian Bahan Baku dari Vendor" required=""><br>
												<label for="new_usermodul">Edit modul:</label>
												<?php
													$con = mysqli_connect("localhost","root","","saptest");

													$query = "SELECT idmodul FROM m_modul";
													$result1 = mysqli_query($con,$query);

													echo "<select name='edit_idmodul'>";
													while ($row1 = mysqli_fetch_array($result1,MYSQLI_ASSOC))
													{
														echo "<option value='" . $row1['idmodul'] . "'>" . $row1['idmodul'] . "</option>";
													}
													echo "</select>";
													
													//$con->close();
												?>
												<br><br>
												<div class="modal-footer">
													<button class="btn btn-default btn-success" type="submit" name="editScn" id="editScn" action="m-uat.php?id=<?php echo $row['no_scn']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
													<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<!-- Button Delete Scenario UAT -->
							<a type='button' class='btn btn-danger btn-xs' data-toggle='modal' href="#modalDelScn<?php echo $row['no_scn']; ?>"><span class='glyphicon glyphicon-trash'></span></a></td>

							<!-- Modal Delete Scenario UAT -->
							<div id="modalDelScn<?php echo $row['no_scn']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Hapus Skenario UAT</h4>
										</div>
										  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formDelScn">
												<label>Anda yakin akan menghapus skenario </label>
												<label type="text" id="scnToDel" name="scnToDel"><?php echo $row['uat_scn']; ?>?</label>
												<br><br>
												<div class="modal-footer">
													<a class="btn btn-default btn-success" name="del" id="del" href="m-uat.php?del=x&id=<?php echo $row['no_scn']; ?>">Hapus</a>
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
					echo "</tr>";
				}

				$con->close();
			?>
			</tbody>
		</table>
	</div>
</body>

<script>
	$(document).ready( function () {
    $('#tableMUAT').DataTable( {
		"lengthMenu": [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]]
		} );
	} );
</script>