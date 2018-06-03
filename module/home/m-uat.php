<!DOCTYPE html>

<?php
	$root = "../../";
	require "../template/setting.php";
	
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
		$scnname = mysqli_real_escape_string($con, $_POST['new_scnname']);
		$scndesc = mysqli_real_escape_string($con, $_POST['new_scndesc']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$query = 'SELECT * FROM m_uat_scn WHERE uat_scn="'.$scnname.'"';
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = 'INSERT INTO m_uat_scn(uat_scn,uat_desc,chg_by,chg_date) VALUES ("'.$scnname.'","'.$scndesc.'","'.$username.'",now())';
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
	
	if (isset($_GET['del']))
	{
		$id = $_GET['id'];
		
		mysqli_query($con,"DELETE FROM m_uat_scn WHERE uat_id='".$id."'");
		header("Location:m-uat.php");
	}
		
	if (isset($_POST['editScn']))
	{	
		$editscnname = mysqli_real_escape_string($con,$_POST['edit_scnname']);
		$editscndesc = mysqli_real_escape_string($con,$_POST['edit_scndesc']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$id = mysqli_real_escape_string($con,$_POST['uat_id']);
		
		if(!mysqli_query($con,"UPDATE m_uat_scn SET uat_scn='$editscnname',uat_desc='$editscndesc',chg_by='$username',chg_date=now() WHERE uat_id='$id'"))
		{
			echo mysqli_error($con);
		}
	}
?>


<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html class="no-js lt-ie9 lt-ie8" lang="en"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html class="no-js lt-ie9" lang="en"><![endif]-->
<!--[if (IE 9)]><html class="no-js ie9" lang="en"><![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
<head>

<!-- Meta Tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>Master Data: Skenario UAT</title>

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

<!-- DataTables Export Button -->
<link href="<?php echo $root; ?>assets/datatables/media/css/buttons.dataTables.min.css" rel="stylesheet">
<script src="<?php echo $root; ?>assets/datatables/media/js/buttons.flash.min.js"></script>
<script src="<?php echo $root; ?>assets/datatables/media/js/buttons.html5.min.js"></script>
<script src="<?php echo $root; ?>assets/datatables/media/js/buttons.print.min.js"></script>
<script src="<?php echo $root; ?>assets/datatables/media/js/dataTables.buttons.min.js"></script>
<script src="<?php echo $root; ?>assets/datatables/media/js/jszip.min.js"></script>
<script src="<?php echo $root; ?>assets/datatables/media/js/pdfmake.min.js"></script>
<script src="<?php echo $root; ?>assets/datatables/media/js/vfs_fonts.js"></script>

<!-- Bootstrap Select -->
<link href="<?php echo $root; ?>assets/bs-select/css/bootstrap-select.min.css" rel="stylesheet">
<script src="<?php echo $root; ?>assets/bs-select/js/bootstrap-select.min.js"></script>

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
				<a class="dropdown-toggle" data-toggle="dropdown" href="#"><b>Master
				<span class="caret"></span></b></a>
				<ul class="dropdown-menu">
					<li><a href="<?php echo $root; ?>module/home/m-modul.php">Modul</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-user.php">User</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-ba.php">Business Area</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-check.php">Checklist</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="<?php echo $root; ?>module/home/m-uat.php">Skenario UAT</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-uat-step.php">Step UAT</a></li>
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
					<li><a href="../../connection/con-logout.php"><b>Logout</b></a></li>
				</ul>
			</li>
		</ul>
		
	  </div>
	</nav>

	<div class="container container-fluid">
		<h1>Master Data Skenario UAT
			<!-- Button Add Skenario UAT -->
			<a class="btn btn-success text-right pull-right" data-toggle="modal" data-target="#modaladd_uatscn"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Skenario</b></a>
			
			<!-- Modal Add Skenario UAT -->
			<div id="modaladd_uatscn" class="modal fade" role="dialog">
				<div class="modal-dialog modal-lg">

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
								<div class="modal-footer">
									<button class="btn btn-default btn-success" type="submit" name="submit1" id="submit1" method="POST" action="m-uat.php"><span class="glyphicon glyphicon-plus"></span> Tambah</button>
									<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</h1>
	</div>
	
	<div class="container container-fluid">
		<table id="tableMUAT" class="table table-hover text-center table-striped compact cell-border">
			<thead>
				<tr>
					<!--<td><b>Modul</b></td>-->
					<!--<td><b>No. Skenario</b></td>-->
					<td><b>Nama Skenario</b></td>
					<td><b>Deskripsi Skenario</b></td>
					<td class="col-md-1"></td>
				</tr>
			</thead>
			<tbody>
			<?php
				$query = "SELECT * FROM m_uat_scn";
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style:'border=1px solid black'>".$row['uat_scn']."</td>";
						echo "<td style:'border=1px solid black' class='col-md-7'>".$row['uat_desc']."</td>";
					
			?>
							<!-- Button Edit Scenario UAT -->
							<td><a type='button' class='btn btn-info btn-xs' data-toggle='modal' href="#modalEditScn<?php echo $row['uat_id']; ?>"><span class='glyphicon glyphicon-pencil'></span></a> 
							
							<!-- Modal Edit Scenario UAT -->
							<div id="modalEditScn<?php echo $row['uat_id']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog modal-lg">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Edit Skenario UAT <?php echo $row['uat_scn']; ?></h4>
										</div>
									  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formEditScn" class="text-left">
												<input type='hidden' name='uat_id' value='<?php echo $row['uat_id']; ?>' />
												<label for="edit_scnname">Edit nama skenario:</label>
												<input type="text" id="edit_scnname" name="edit_scnname" class="form-control" value="<?php echo $row['uat_scn']; ?>" required=""><br>
												<label for="edit_scndesc">Edit deskripsi skenario:</label>
												<input type="text" id="edit_scndesc" name="edit_scndesc" class="form-control" value="<?php echo $row['uat_desc']; ?>" required=""><br>
												Terakhir diubah oleh <label><?php echo $row['chg_by']; ?></label>
												<?php
													$origDate = $row['chg_date'];
													$newDate = date("d-M-Y H:i:s", strtotime($origDate));
												?>
												tanggal <label><?php echo $newDate; ?></label>.
												<br><br>
												<div class="modal-footer">
													<button class="btn btn-default btn-success" type="submit" name="editScn" id="editScn" action="m-uat.php?id=<?php echo $row['uat_id']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
													<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<!-- Button Delete Scenario UAT -->
							<a type='button' class='btn btn-danger btn-xs' data-toggle='modal' href="#modalDelScn<?php echo $row['uat_id']; ?>"><span class='glyphicon glyphicon-trash'></span></a></td>

							<!-- Modal Delete Scenario UAT -->
							<div id="modalDelScn<?php echo $row['uat_id']; ?>" class="modal fade" role="dialog">
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
													<a class="btn btn-default btn-success" name="del" id="del" href="m-uat.php?del=x&id=<?php echo $row['uat_id']; ?>"><span class="glyphicon glyphicon-trash"></span> Hapus</a>
													<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
			<?php
						
					echo "</tr>";
				}
			?>
			</tbody>
		</table>
	</div>
</body>

<script>
	$(document).ready( function () {
    $('#tableMUAT').DataTable( {
		stateSave: true,
		"lengthMenu": [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]],
		dom: 'Blfrtip',
		buttons: [
            {
                extend: 'copyHtml5',
                exportOptions: {
                    columns: [ 0, 1 ]
                }
            },
            {
                extend: 'excelHtml5',
                exportOptions: {
                    columns: [ 0, 1 ]
                }
            },
            {
                extend: 'print',
                exportOptions: {
                    columns: [ 0, 1 ]
                }
            }
		]
		} );
	} );
</script>