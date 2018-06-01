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
	
	$idba = "";
	$nameba = "";
	$result1 = "";
	
	if (isset($_POST['submit']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
		
		$idba = mysqli_real_escape_string($con,$_POST['new_idba']);
		$nameba = mysqli_real_escape_string($con,$_POST['new_nameba']);
		$datelive = mysqli_real_escape_string($con,$_POST['new_datelive']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$query = 'SELECT * FROM m_ba WHERE idba="'.$idba.'"';
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = 'INSERT INTO m_ba(idba,nameba,date_live,chg_by,chg_date) VALUES ("'.$idba.'","'.$nameba.'","'.$datelive.'","'.$username.'",now())';
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
	
	if (isset($_GET['del']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
		
		$id = $_GET['id'];
		
		mysqli_query($con,"DELETE FROM m_ba WHERE idba='".$id."'");
		mysqli_close($con);
		header("Location:m-ba.php");
	}
	
	if (isset($_POST['editBA']))
	{	
		$con = mysqli_connect("localhost","root","","saptest");
		$editnameba = mysqli_real_escape_string($con,$_POST['edit_nameba']);
		$editdatelive = mysqli_real_escape_string($con,$_POST['edit_datelive']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		$p_fico = mysqli_real_escape_string($con,$_POST['pic_fico']);
		$p_mm = mysqli_real_escape_string($con,$_POST['pic_mm']);
		$p_pm = mysqli_real_escape_string($con,$_POST['pic_pm']);
		$p_pp = mysqli_real_escape_string($con,$_POST['pic_pp']);
		$p_sd = mysqli_real_escape_string($con,$_POST['pic_sd']);
		
		$id = mysqli_real_escape_string($con,$_POST['id']);
		
		if(!mysqli_query($con,"UPDATE m_ba SET nameba='$editnameba',date_live='$editdatelive',p_fico='$p_fico',p_mm='$p_mm',p_pm='$p_pm',p_pp='$p_pp',p_sd='$p_sd',chg_by='$username',chg_date=now() WHERE id='$id'"))
		{
			echo mysqli_error($con);
		}
		
		mysqli_close($con);
		#header("Location:m-ba.php");
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
		<h1>Master Data Business Area
			<?php
				if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
				{
			?>
			<!--<a class="btn btn-danger pull-right"><span class="glyphicon glyphicon-remove"></span></a>-->
			<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#modaladdba"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Business Area</b></button>
			
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
						<input type="text" id="new_idba" name="new_idba" class="form-control" placeholder="Contoh: 3000" required="" autofocus="" maxlength="4"><br>
						<label for="new_nameba">Nama cabang:</label>
						<input type="text" id="new_nameba" name="new_nameba" class="form-control" placeholder="Contoh: Samator Gas Industri Pusat" required=""><br>
						<label for="new_datelive">Tanggal live:</label>
						<input type="date" id="new_datelive" name="new_datelive" class="form-control"><br>
						<br><br>
						<div class="modal-footer">
							<button class="btn btn-default btn-success" type="submit" name="submit" id="submit" method="POST" action="m-ba.php"><span class="glyphicon glyphicon-plus"></span> Tambah</button>
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
		<table id="tableBA" class="table table-hover text-center table-striped compact cell-border">
			<thead>
				<tr>
					<td><b>BA</b></td>
					<td><b>Nama BA</b></td>
					<td><b>Tanggal Live</b></td>
					<td class="col-md-1 col-lg-1"><b>FICO</b></td>
					<td class="col-md-1 col-lg-1"><b>MM</b></td>
					<td class="col-md-1 col-lg-1"><b>PM</b></td>
					<td class="col-md-1 col-lg-1"><b>PP</b></td>
					<td class="col-md-1 col-lg-1"><b>SD</b></td>
					
					<td class="col-md-1"></td>
					
				</tr>
			</thead>
			<tbody data-link="row">
			<?php
				$con = mysqli_connect("localhost","root","","saptest");

				$query = "SELECT * FROM m_ba";
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style:'border=1px solid black'>".$row['idba']."</td>";
						echo "<td style:'border=1px solid black'>".$row['nameba']."</td>";
						$origDate = $row['date_live'];
						$newDate = date("d-m-Y", strtotime($origDate));
						echo "<td style:'border=1px solid black'>".$newDate."</td>";
						echo "<td style:'border=1px solid black'>".$row['p_fico']."</td>";
						echo "<td style:'border=1px solid black'>".$row['p_mm']."</td>";
						echo "<td style:'border=1px solid black'>".$row['p_pm']."</td>";
						echo "<td style:'border=1px solid black'>".$row['p_pp']."</td>";
						echo "<td style:'border=1px solid black'>".$row['p_sd']."</td>";
					
			?>
							<td><a type='button' class='btn btn-info btn-xs' data-toggle='modal' href="#modalEditBA<?php echo $row['id']; ?>"><span class='glyphicon glyphicon-pencil'></span></a> 
							
							<!-- Modal Edit BA -->
							<div id="modalEditBA<?php echo $row['id']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Edit Business Area <?php echo $row['idba']; ?></h4>
										</div>
									  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formEditBA" class="text-left">
												<input type='hidden' name='id' value='<?php echo $row['id']; ?>' />
												<label for="edit_nameba">Edit nama BA:</label>
												<input type="text" id="edit_nameba" name="edit_nameba" class="form-control" value="<?php echo $row['nameba']; ?>" required=""><br>
												<label for="edit_datelive">Tanggal live:</label>
												<input type="date" id="edit_vcdate" name="edit_datelive" class="form-control" value="<?php echo $row['date_live']; ?>"><br>
												<label for="pic_fico">PIC FICO:</label><br>
												<?php
													$sql1 = "SELECT * FROM user where usermodul='FICO'";
													$result1 = mysqli_query($con,$sql1);

													echo "<select name='pic_fico' class='selectpicker show-tick' title='Pilih PIC FICO' data-width='75%'>";
													while ($row1 = mysqli_fetch_array($result1,MYSQLI_ASSOC))
													{
														if ($row['p_fico'] == $row1[userid])
														{
															echo "<option value='$row1[userid]' selected>$row1[userid] - $row1[userlname]</option>";
														} else {
															echo "<option value='$row1[userid]'>$row1[userid] - $row1[userlname]</option>";
														}
													}
													echo "</select>";
												?><br><br>
												<label for="pic_mm">PIC MM:</label><br>
												<?php
													$sql2 = "SELECT * FROM user where usermodul='MM'";
													$result2 = mysqli_query($con,$sql2);

													echo "<select name='pic_mm' class='selectpicker show-tick' title='Pilih PIC MM' data-width='75%'>";
													while ($row2 = mysqli_fetch_array($result2,MYSQLI_ASSOC))
													{
														if ($row['p_mm'] == $row2[userid])
														{
															echo "<option value='$row2[userid]' selected>$row2[userid] - $row2[userlname]</option>";
														} else {
															echo "<option value='$row2[userid]'>$row2[userid] - $row2[userlname]</option>";
														}
													}
													echo "</select>";
												?><br><br>
												<label for="pic_pm">PIC PM:</label><br>
												<?php
													$sql3 = "SELECT * FROM user where usermodul='PM'";
													$result3 = mysqli_query($con,$sql3);

													echo "<select name='pic_pm' class='selectpicker show-tick' title='Pilih PIC PM' data-width='75%'>";
													while ($row3 = mysqli_fetch_array($result3,MYSQLI_ASSOC))
													{
														if ($row['p_pm'] == $row3[userid])
														{
															echo "<option value='$row3[userid]' selected>$row3[userid] - $row3[userlname]</option>";
														} else {
															echo "<option value='$row3[userid]'>$row3[userid] - $row3[userlname]</option>";
														}
													}
													echo "</select>";
												?><br><br>
												<label for="pic_pp">PIC PP:</label><br>
												<?php
													$sql4 = "SELECT * FROM user where usermodul='PP'";
													$result4 = mysqli_query($con,$sql4);

													echo "<select name='pic_pp' class='selectpicker show-tick' title='Pilih PIC PP' data-width='75%'>";
													while ($row4 = mysqli_fetch_array($result4,MYSQLI_ASSOC))
													{
														if ($row['p_pp'] == $row4[userid])
														{
															echo "<option value='$row4[userid]' selected>$row4[userid] - $row4[userlname]</option>";
														} else {
															echo "<option value='$row4[userid]'>$row4[userid] - $row4[userlname]</option>";
														}
													}
													echo "</select>";
												?><br><br>
												<label for="pic_sd">PIC SD:</label><br>
												<?php
													$sql5 = "SELECT * FROM user where usermodul='SD'";
													$result5 = mysqli_query($con,$sql5);

													echo "<select name='pic_sd' class='selectpicker show-tick' title='Pilih PIC SD' data-width='75%'>";
													while ($row5 = mysqli_fetch_array($result5,MYSQLI_ASSOC))
													{
														if ($row['p_sd'] == $row5[userid])
														{
															echo "<option value='$row5[userid]' selected>$row5[userid] - $row5[userlname]</option>";
														} else {
															echo "<option value='$row5[userid]'>$row5[userid] - $row5[userlname]</option>";
														}
													}
													echo "</select>";
												?><br><br>
												Terakhir diubah oleh <label><?php echo $row['chg_by']; ?></label>
												<?php
													$origDate = $row['chg_date'];
													$newDate = date("d-M-Y H:i:s", strtotime($origDate));
												?>
												tanggal <label><?php echo $newDate; ?></label>.
												<br><br>
												<div class="modal-footer">
													<button class="btn btn-default btn-success" type="submit" name="editBA" id="editBA" action="m-ba.php?id=<?php echo $row['id']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
													<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
							
							<a type='button' class='btn btn-danger btn-xs' data-toggle='modal' href="#modalDelBA<?php echo $row['idba']; ?>"><span class='glyphicon glyphicon-trash'></span></a></td>
							
							<!-- Modal Delete BA -->
							<div id="modalDelBA<?php echo $row['idba']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Hapus Business Area</h4>
										</div>
										  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formDelBA">
												<label>Anda yakin akan menghapus Business Area</label>
												<label type="text"><?php echo $row['idba']; ?> <?php echo $row['nameba']; ?>?</label>
												<br><br>
												<div class="modal-footer">
													<a class="btn btn-default btn-success" type="submit" name="del" id="del" method="POST" href="m-ba.php?del=x&id=<?php echo $row['idba']; ?>"><span class="glyphicon glyphicon-trash"></span> Hapus</a>
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

				$con->close();
			?>
			</tbody>
		</table>
	</div>
</body>

<script>
	$(document).ready( function () {
    $('#tableBA').DataTable( {
		stateSave: true,
		"lengthMenu": [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]],
		dom: 'Blfrtip',
		buttons: [
            {
                extend: 'copyHtml5',
                exportOptions: {
                    columns: [ 0, 1, 2, 3, 4, 5, 6, 7 ]
                }
            },
            {
                extend: 'excelHtml5',
                exportOptions: {
                    columns: [ 0, 1, 2, 3, 4, 5, 6, 7 ]
                }
            },
            {
                extend: 'print',
                exportOptions: {
                    columns: [ 0, 1, 2, 3, 4, 5, 6, 7 ]
                }
            }
		]
		} );
	} );
</script>