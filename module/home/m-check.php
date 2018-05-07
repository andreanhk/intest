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
	
	$ctype = "";
	$ctypedesc = "";
	$ctcode = "";
	$cstat = "";
	$ctable = "";
	$cmodul = "";
	
	if (isset($_POST['submit']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
		
		$ctype = mysqli_real_escape_string($con,$_POST['new_ctype']);
		$ctypedesc = mysqli_real_escape_string($con,$_POST['new_ctypedesc']);
		$ctcode = mysqli_real_escape_string($con,$_POST['new_ctcode']);
		$cstat = mysqli_real_escape_string($con,$_POST['new_cstat']);
		$ctable = mysqli_real_escape_string($con,$_POST['new_ctable']);
		$cmodul = mysqli_real_escape_string($con,$_POST['new_cmodul']);
		
		$query = 'SELECT * FROM m_check WHERE ctype="'.$ctype.'" AND ctypedesc="'.$ctypedesc.'"';
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = 'INSERT INTO m_check(ctype,ctypedesc,ctcode,ctable,cstat,cmodul) VALUES ("'.$ctype.'","'.$ctypedesc.'","'.$ctcode.'","'.$ctable.'","'.$cstat.'","'.$cmodul.'")';
			$result = mysqli_query($con,$query);
			header("location:m-check.php");
		}
		else
		{
			echo '<script language="javascript">';
			echo 'alert("Checklist tersebut sudah ada!")';
			echo '</script>';
		}
	}
	
	if (isset($_GET['del']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
		
		$id = $_GET['id'];
		
		mysqli_query($con,"DELETE FROM m_check WHERE c_id='".$id."'");
		mysqli_close($con);
		header("Location:m-check.php");
	}
	
	if (isset($_POST['editCheck']))
	{	
		$con = mysqli_connect("localhost","root","","saptest");
		
		$editCtype = mysqli_real_escape_string($con,$_POST['edit_ctype']);
		$editCtypedesc = mysqli_real_escape_string($con,$_POST['edit_ctypedesc']);
		$editCtcode = mysqli_real_escape_string($con,$_POST['edit_ctcode']);
		$editCstat = mysqli_real_escape_string($con,$_POST['edit_cstat']);
		$editCtable = mysqli_real_escape_string($con,$_POST['edit_ctable']);
		$editCmodul = mysqli_real_escape_string($con,$_POST['edit_cmodul']);
		
		$id = mysqli_real_escape_string($con,$_POST['c_id']);
		
		if(!mysqli_query($con,"UPDATE m_check SET ctype='$editCtype',ctypedesc='$editCtypedesc',ctcode='$editCtcode',cstat='$editCstat',ctable='$editCtable',cmodul='$editCmodul' WHERE c_id='$id'"))
		{
			echo mysqli_error($con);
		}
		
		mysqli_close($con);
		#header("Location:m-user.php");
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

<!-- DataTables -->
<link href="<?php echo $root; ?>assets/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet">
<script src="<?php echo $root; ?>assets/datatables/media/js/jquery.dataTables.min.js"></script>

<!-- Bootstrap Select -->
<link href="<?php echo $root; ?>assets/bs-select/css/bootstrap-select.min.css" rel="stylesheet">
<script src="<?php echo $root; ?>assets/bs-select/js/bootstrap-select.min.js"></script>

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
		<h1>Master Data Checklist
			
			
			<!--<a class="btn btn-danger pull-right"><span class="glyphicon glyphicon-remove"></span></a>-->
			<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#modalAddCheck"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Checklist</b></button>
			
			<!-- Modal Add Checklist -->
			<div id="modalAddCheck" class="modal fade" role="dialog">
				<div class="modal-dialog">

				<!-- Open modal add checklist -->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Tambah Checklist Baru</h4>
						</div>
						
						<div class="modal-body"><h5>
							<form action="" method="POST" name="form_addchecklist">
								<label for="new_ctype">Tipe custom:</label>
								<input type="text" id="new_ctype" name="new_ctype" class="form-control" placeholder="Contoh: Enterprise Structure" required="" autofocus=""><br>
								<label for="new_cdesc">Deskripsi custom:</label>
								<input type="text" id="new_ctypedesc" name="new_ctypedesc" class="form-control" placeholder="Contoh: Define Business Area" required=""><br>
								<label for="new_ctcode">Tcode custom:</label>
								<input type="text" id="new_ctcode" name="new_ctcode" class="form-control" placeholder="Contoh: SPRO" required=""><br>
								<label for="new_ctable">Tabel:</label>
								<input type="text" id="new_ctable" name="new_ctable" class="form-control" placeholder="Contoh: V_TGSB"><br>
								<label for="new_cstat">Status custom:</label>
								<input type="text" id="new_cstat" name="new_cstat" class="form-control" placeholder="Contoh: Create/Check" required=""><br>
								<label for="new_cmodul">Modul checklist:</label><br>
								<?php
									$con = mysqli_connect("localhost","root","","saptest");

									if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
									{
										$sql = "SELECT idmodul FROM m_modul";
									}
									else
									{
										$sql = "SELECT idmodul FROM m_modul where idmodul='$_SESSION[modul]'";
									}
									$result = mysqli_query($con,$sql);

									echo "<select name='idmodul' class='selectpicker' title='Pilih Modul' data-width='auto'>";
									while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
									{
										echo "<option value='$row[idmodul]'>$row[idmodul]</option>";
									}
									echo "</select>";
									
									$con->close();
								?><br /><br />
					  
								<div class="modal-footer">
									<button class="btn btn-default btn-success" type="submit" name="submit" id="submit" method="POST" action="m-check.php"><span class="glyphicon glyphicon-plus"></span> Tambah</button>
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
	<?php if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS") { ?>
		<select id="select1" onChange="getval(this);" class='selectpicker' title='Pilih Modul'>
		<?php
				$con = mysqli_connect("localhost","root","","saptest");

				$sql = "SELECT idmodul FROM m_modul";
				$result = mysqli_query($con,$sql);

				while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<option value='$row[idmodul]'>$row[idmodul]</option>";
					$idmodul = $_GET['idmodul'];
				}
				
				$con->close();
			?>
		</select>
	<?php } else {} ?>
	</div><br>
	
	
	<div class="container container-fluid">
		<table id="tableMCheck" class="table table-hover text-center table-striped compact cell-border">
			<thead>
				<tr>
					<td><b>Modul</b></td>
					<td><b>Custom Type</b></td>
					<td><b>Custom Description</b></td>
					<td><b>Tcode</b></td>
					<td><b>Table</b></td>
					<td><b>Custom Status</b></td>
					<?php if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS") { ?>
					<td class="col-md-1"></td>
					<?php } else {} ?>
				</tr>
			</thead>
			<tbody data-link="row">
			<?php
				$con = mysqli_connect("localhost","root","","saptest");
				
				if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
				{
					$query = "SELECT * FROM m_check";
				}
				else
				{
					$query = "SELECT * FROM m_check WHERE cmodul='$_SESSION[modul]'";
				}
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style:'border=1px solid black'>".$row['cmodul']."</td>";
						echo "<td style:'border=1px solid black'>".$row['ctype']."</td>";
						echo "<td style:'border=1px solid black'>".$row['ctypedesc']."</td>";
						echo "<td style:'border=1px solid black'>".$row['ctcode']."</td>";
						echo "<td style:'border=1px solid black'>".$row['ctable']."</td>";
						echo "<td style:'border=1px solid black'>".$row['cstat']."</td>";
					if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
						{
			?>
							<!-- Button Edit Checklist -->
							<td><a type='button' class='btn btn-info btn-xs' data-toggle='modal' href="#modalEditCheck<?php echo $row['c_id']; ?>"><span class='glyphicon glyphicon-pencil'></span></a> 
							
							<!-- Modal Edit Checklist -->
							<div id="modalEditCheck<?php echo $row['c_id']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Edit Checklist</h4>
										</div>
									  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formEditCheck" class="text-left">
												<input type='hidden' name='c_id' value='<?php echo $row['c_id']; ?>' />
												<label for="new_userlname"class="text-left">Edit tipe custom:</label>
												<input type="text" id="edit_userlname" name="edit_ctype" class="form-control" value="<?php echo $row['ctype']; ?>" required=""><br>
												<label for="edit_ctypedesc">Edit deskripsi custom:</label>
												<input type="text" id="edit_ctypedesc" name="edit_ctypedesc" class="form-control" value="<?php echo $row['ctypedesc']; ?>" required=""><br>
												<label for="edit_ctcode">Edit Tcode:</label>
												<input type="text" id="edit_ctcode" name="edit_ctcode" class="form-control" value="<?php echo $row['ctcode']; ?>" required=""><br>
												<label for="edit_ctable">Edit tabel custom:</label>
												<input type="text" id="edit_ctable" name="edit_ctable" class="form-control" value="<?php echo $row['ctable']; ?>"><br>
												<label for="edit_cstat">Edit status:</label>
												<input type="text" id="edit_cstat" name="edit_cstat" class="form-control" value="<?php echo $row['cstat']; ?>" required=""><br>
												<label for="edit_cmodul">Edit modul:</label><br>
												<?php
													$con = mysqli_connect("localhost","root","","saptest");

													$query = "SELECT idmodul FROM m_modul";
													$result1 = mysqli_query($con,$query);

													echo "<select name='edit_cmodul' class='selectpicker' title='Pilih Modul' data-width='auto'>";
													while ($row1 = mysqli_fetch_array($result1,MYSQLI_ASSOC))
													{
														echo "<option value='$row1[idmodul]'>$row1[idmodul]</option>";
													}
													echo "</select>";
													
													//$con->close();
												?>
												<br><br>
												<div class="modal-footer">
													<button class="btn btn-default btn-success" type="submit" name="editCheck" c_id="editCheck" action="m-check.php?id=<?php echo $row['c_id']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
													<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<!-- Button Delete Checklist -->
							<a type='button' class='btn btn-danger btn-xs' data-toggle='modal' href="#modalDelCheck<?php echo $row['c_id']; ?>"><span class='glyphicon glyphicon-trash'></span></a></td>

							<!-- Modal Delete Checklist -->
							<div id="modalDelCheck<?php echo $row['c_id']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Hapus Checklist</h4>
										</div>
										  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formDelCheck">
												<label>Anda yakin akan menghapus checklist</label>
												<label type="text" id="checkToDel" name="checkToDel"><?php echo $row['ctypedesc']; ?>?</label>
												<br><br>
												<div class="modal-footer">
													<a class="btn btn-default btn-success" type="submit" name="delCheck" c_id="delCheck" method="POST" href="m-check.php?del=x&c_id=<?php echo $row['c_id']; ?>"><span class="glyphicon glyphicon-trash"></span> Hapus</a>
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
	var idxCols=0;
	var cols=[];

	$(document).ready( function () {
    $('#tableMCheck').DataTable( {
		stateSave: true,
		"lengthMenu": [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]],
		
		"columnDefs": [
				{
					"targets": [ 0 ],
					"visible": false,
				},
			],
		
			initComplete: function () {
				this.api().columns().every( function () {
					cols.push(this);
					idxCols++;
				} );
			}
		} );
		
		$('#select1').on( 'change', function () {
			column = cols[0];
			var val = $.fn.dataTable.util.escapeRegex(
				$(this).find(":selected").text()
			);
			
			column
				.search( val ? '^'+val+'$' : '', true, false )
				.draw();
		} );
	} );
</script>