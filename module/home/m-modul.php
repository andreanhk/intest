<!DOCTYPE html>

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
	
	$idmodul = "";
	$namemodul = "";
	$result1 = "";
	
	if (isset($_POST['submit']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
		
		$idmodul = mysqli_real_escape_string($con,$_POST['new_idmodul']);
		$namemodul = mysqli_real_escape_string($con,$_POST['new_namemodul']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$query = 'SELECT * FROM m_modul WHERE idmodul="'.$idmodul.'"';
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = 'INSERT INTO m_modul(idmodul,namemodul,chg_by,chg_date) VALUES ("'.$idmodul.'","'.$namemodul.'","'.$username.'",now())';
			$result1 = mysqli_query($con,$query);
			header("location:m-modul.php");
		}
		else
		{
			echo '<script language="javascript">';
			echo 'alert("Kode modul tersebut sudah ada!")';
			echo '</script>';
		}
	}
	
	if (isset($_GET['delmodul']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
		
		$idmodul = $_GET['idmodul'];
		
		mysqli_query($con,"DELETE FROM m_modul WHERE idmodul='".$idmodul."'");
		mysqli_close($con);
		header("Location:m-modul.php");
	}
	
	if (isset($_POST['editModul']))
	{	
		$con = mysqli_connect("localhost","root","","saptest");
		$editnamemodul = mysqli_real_escape_string($con,$_POST['edit_namemodul']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$id = mysqli_real_escape_string($con,$_POST['idmodul']);
		
		if(!mysqli_query($con,"UPDATE m_modul SET namemodul='$editnamemodul',chg_by='$username',chg_date=now() WHERE idmodul='$id'"))
		{
			echo mysqli_error($con);
		}
		
		mysqli_close($con);
		#header("Location:m-modul.php");
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

<title>Master Data: Modul</title>

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
					<li><a href="../../connection/logout.php"><b>Logout</b></a></li>
				</ul>
			</li>
		</ul>
		
	  </div>
	</nav>

	<div class="container container-fluid">
		<h1>Master Data Modul
			<?php
				if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
				{
			?>
			<!--<a class="btn btn-danger pull-right"><span class="glyphicon glyphicon-remove"></span></a>-->
			<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#modalAddModul"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Modul</b></button>
			
			<!-- Modal Add User -->
			<div id="modalAddModul" class="modal fade" role="dialog">
			  <div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
				  <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Tambah Modul Baru</h4>
				  </div>
				  <div class="modal-body"><h5>
					<form action="" method="POST" name="form_addmodul">
						<label for="new_idmodul">Kode modul:</label>
						<input type="text" id="new_idmodul" name="new_idmodul" class="form-control" placeholder="Contoh: ABAP" required="" autofocus=""><br>
						<label for="new_namemodul">Nama modul:</label>
						<input type="text" id="new_namemodul" name="new_namemodul" class="form-control" placeholder="Contoh: Advanced Business Application & Programming" required=""><br>
						
						<br><br>
						<div class="modal-footer">
							<button class="btn btn-default btn-success" type="submit" name="submit" id="submit" method="POST" action="m-modul.php"><span class="glyphicon glyphicon-plus"></span> Tambah</button>
							<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
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
	</div>
	
	<div class="container container-fluid">
		<table id="tableModul" class="table table-hover text-center table-striped compact cell-border">
			<thead>
				<tr>
					<td><b>ID Modul</b></td>
					<td><b>Nama Modul</b></td>
					<?php if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS") { ?>
					<td class="col-md-1"></td>
					<?php } else {} ?>
				</tr>
			</thead>
			<tbody>
			<?php
				$con = mysqli_connect("localhost","root","","saptest");

				$query = "SELECT * FROM m_modul";
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style:'border=1px solid black'>".$row['idmodul']."</td>";
						echo "<td style:'border=1px solid black>".$row['namemodul']."</td>";
					if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
						{
			?>
							<td><a class='btn btn-info btn-xs' data-toggle='modal' href="#modalEditModul<?php echo $row['idmodul']; ?>"><span class='glyphicon glyphicon-pencil'></span></a> 
							
							<!-- Modal Edit modul -->
							<div id="modalEditModul<?php echo $row['idmodul']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Edit Modul <?php echo $row['idmodul']; ?></h4>
										</div>
									  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formEditmodul" class="text-left">
												<input type='hidden' name='idmodul' value='<?php echo $row['idmodul']; ?>' />
												<label for="edit_namemodul">Edit nama modul:</label>
												<input type="text" id="edit_namemodul" name="edit_namemodul" class="form-control" value="<?php echo $row['namemodul']; ?>" required=""><br>
												Terakhir diubah oleh <label><?php echo $row['chg_by']; ?></label>
												<?php
													$origDate = $row['chg_date'];
													$newDate = date("d-M-Y H:i:s", strtotime($origDate));
												?>
												tanggal <label><?php echo $newDate; ?></label>.
												<br><br>
												<div class="modal-footer">
													<button class="btn btn-default btn-success" type="submit" name="editModul" id="editModul" action="m-modul.php?id=<?php echo $row['idmodul']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
													<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
							
							<a class='btn btn-danger btn-xs' data-toggle='modal' href="#modalDelModul<?php echo $row['idmodul']; ?>"><span class='glyphicon glyphicon-trash'></span></a></td>
							
							<!-- Modal Delete modul -->
							<div id="modalDelModul<?php echo $row['idmodul']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Hapus Modul</h4>
										</div>
										  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formDelmodul">
												<label>Anda yakin akan menghapus Modul</label>
												<label type="text" id="modulToDel" name="modulToDel"><?php echo $row['idmodul']; ?> (<?php echo $row['namemodul']; ?>)?</label>
												<br><br>
												<div class="modal-footer">
													<a class="btn btn-default btn-success" type="submit" name="delmodul" id="delmodul" method="POST" href="m-modul.php?delmodul=x&idmodul=<?php echo $row['idmodul']; ?>"><span class="glyphicon glyphicon-trash"></span> Hapus</a>
													<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
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
    $('#tableModul').DataTable( {
		stateSave: true,
		lengthMenu: [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]],
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