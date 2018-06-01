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
	
	if (isset($_POST['submit']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
		
		$idBA = mysqli_real_escape_string($con, $_POST['idba']);
		
		$query = "SELECT * FROM v_check WHERE vcba = $idBA";
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = "INSERT INTO v_check (ctype,ctypedesc,ctcode,ctable,cstat,cmodul,vcba) SELECT ctype,ctypedesc,ctcode,ctable,cstat,cmodul, $idBA as vcba FROM m_check";
			$result1 = mysqli_query($con,$query);
			header("location:checklist.php");
		}
		else
		{
			echo '<script language="javascript">';
			echo 'alert("Checklist BA sudah ada!")';
			echo '</script>';
		}
	}
	
	if (isset($_POST['editCL']))
	{	
		$con = mysqli_connect("localhost","root","","saptest");
		
		$editvcheck = mysqli_real_escape_string($con,$_POST['edit_vcheck']);
		$editvctr = mysqli_real_escape_string($con,$_POST['edit_vctransreqs']);
		$editvcdate = mysqli_real_escape_string($con,$_POST['edit_vcdate']);
		$editvcpic = mysqli_real_escape_string($con,$_POST['edit_vcpic']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$id = mysqli_real_escape_string($con,$_POST['id']);
		
		if(!mysqli_query($con,"UPDATE v_check SET vcheck='$editvcheck',vctransreqs='$editvctr',vcdate='$editvcdate',vcpic='$editvcpic',chg_by='$username',chg_date=now() WHERE id='$id'"))
		{
			echo mysqli_error($con);
		}
		
		mysqli_close($con);
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

<title>Checklist</title>

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
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Master
				<span class="caret"></span></a>
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
			<li class="active"><a href="<?php echo $root; ?>module/home/checklist.php"><b>Checklist</b></a></li>
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
		<h1>Checklist
		
			<!--<a class="btn btn-danger pull-right"><span class="glyphicon glyphicon-remove"></span></a>-->
			<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#modalAddCL"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Checklist BA Baru</b></button>
			
			<!-- Modal Add User -->
			<div id="modalAddCL" class="modal fade" role="dialog">
			  <div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
				  <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Tambah Checklist BA Baru</h4>
				  </div>
				  <div class="modal-body"><h5>
					<form action="" method="POST" name="form_addCL">
						<label>Kode business area:</label><br>
						<?php
							$con = mysqli_connect("localhost","root","","saptest");

							$sql = "SELECT * FROM m_ba  ORDER BY idba ASC";
							$result = mysqli_query($con,$sql);

							echo "<select name='idba' class='selectpicker show-tick' title='Pilih BA' onchange='getval(this);'>";
							while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
							{
								echo "<option value='$row[idba]'>$row[idba] - $row[nameba]</option>";
							}
							echo "</select>";
						?><br /><br />
						
						<div class="modal-footer">
							<button class="btn btn-default btn-success" type="submit" name="submit" id="submit" method="POST" action="checklist.php"><span class="glyphicon glyphicon-plus"></span> Tambah</button>
							<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
						</div>
					</form>
				  </div>
				  
				</div>

			  </div>
			</div>
			
		</h1>
	</div>
	
	<?php if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS") { ?>
	<div class="container container-fluid">
		<select id="select1" class='selectpicker' title='Pilih Modul' data-width='auto'>
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
	
	<?php } else {
		?> <div class="container container-fluid">
		<?php
	} ?>
	
	
		<select id="select2" class='selectpicker show-tick' title='Pilih Business Area' data-width='auto'>
		<?php
				$con = mysqli_connect("localhost","root","","saptest");

				$sql = "SELECT * FROM m_ba ORDER BY idba ASC";
				$result = mysqli_query($con,$sql);

				while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<option value='$row[idba]'>$row[idba] - $row[nameba]</option>";
					$idba = $_GET['idba'];
				}
				
				$con->close();
			?>
		</select>
	</div><br>
	
	<div class="container container-fluid">
		<table id="tableChecklist" class="table table-hover text-center table-striped compact cell-border">
			<thead>
				<tr>
					<td><b>Modul</b></td>
					<td class="col-md-2"><b>Tipe Custom</b></td>
					<td class="col-md-3"><b>Deskripsi Custom</b></td>
					<td><b>Tcode</b></td>
					<td><b>Tabel</b></td>
					<td><b>Status Custom</b></td>
					<td><b><span class="glyphicon glyphicon-ok"></span></b></td>
					<td><b>BA</b></td>
					<td><b>TR</b></td>
					<td><b>Date</b></td>
					<td><b>PIC</b></td>
					<td></td>
				</tr>
			</thead>
			<tbody>
			<?php
				$con = mysqli_connect("localhost","root","","saptest");

				if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
				{
					$query = "SELECT * FROM v_check";
				}
				else
				{
					//$query = "SELECT * FROM v_check WHERE cmodul='$_SESSION[modul]'";
					//$query = "SELECT * FROM c v_check JOIN b m_ba WHERE c.cmodul = '$_SESSION[modul]' AND c.vcba = b.idba AND '$_SESSION[username]' IN (b.p_fico,b.p_mm,b.p_pm,b.p_pp,b.p_sd)";
					$query = "SELECT * FROM saptest.v_check INNER JOIN saptest.m_ba ON saptest.v_check.vcba=saptest.m_ba.idba 
								WHERE cmodul='$_SESSION[modul]' AND '$_SESSION[username]'
								IN (saptest.m_ba.p_fico,saptest.m_ba.p_mm,saptest.m_ba.p_pm,saptest.m_ba.p_pp,saptest.m_ba.p_sd);";
				}
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style:'border=1px solid black'>".$row['cmodul']."</td>";
						echo "<td style:'border=1px solid black'>".$row['ctype']."</td>";
						echo "<td style:'border=1px solid black'>".$row['ctypedesc']."</td>";
						echo "<td style:'border=1px solid black' class='col-md-1 col-lg-1'>".$row['ctcode']."</td>";
						echo "<td style:'border=1px solid black' class='col-md-1 col-lg-1'>".$row['ctable']."</td>";
						echo "<td style:'border=1px solid black'>".$row['cstat']."</td>";
						echo "<td style:'border=1px solid black'>".$row['vcheck']."</td>";
						echo "<td style:'border=1px solid black'>".$row['vcba']."</td>";
						echo "<td style:'border=1px solid black'>".$row['vctransreqs']."</td>";
						$origDate = $row['vcdate'];
						$newDate = date("d-m-Y", strtotime($origDate));
						//echo "<td style:'border=1px solid black'>".$row['vcdate']."</td>";
						echo "<td style:'border=1px solid black'>".$newDate."</td>";
						echo "<td style:'border=1px solid black'>".$row['vcpic']."</td>";
			?>
						<!-- Button Edit Checklist -->
							<td><a type='button' class='btn btn-info btn-xs' data-toggle='modal' href="#modalEditCL<?php echo $row['id']; ?>"><span class='glyphicon glyphicon-pencil'></span></a> 
							
							<!-- Modal Edit Checklist -->
							<div id="modalEditCL<?php echo $row['id']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Edit Checklist</h4>
										</div>
									  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formEditCL" class="text-left">
												<input type='hidden' name='id' value='<?php echo $row['id']; ?>' />
												<label><span class="glyphicon glyphicon-tasks"></span> <?php echo $row['ctype']; ?>: <?php echo $row['ctypedesc'];?></label><br>
												<label><span class="glyphicon glyphicon-briefcase"></span> Untuk BA: <?php echo $row['vcba']; ?></label><br><br>
												<label for="edit_vcheck">Cek status custom?</label><br>
												<?php
													if ($row['vcheck']=="OK")
													{
														echo "<input type='radio' name='edit_vcheck' value='OK' checked> OK<br><input type='radio' name='edit_vcheck' value=' '> Belum<br><br>";
													}
													else
													{
														echo "<input type='radio' name='edit_vcheck' value='OK'> OK<br><input type='radio' name='edit_vcheck' value=' ' checked> Belum<br><br>";
													}
												?>
												<label for="edit_vctransreqs">No. <i>Transport Request</i>:</label>
												<input type="text" id="edit_vctransreqs" name="edit_vctransreqs" class="form-control" value="<?php echo $row['vctransreqs']; ?>"><br>
												<label for="edit_vcdate">Tanggal cek:</label>
												<input type="date" id="edit_vcdate" name="edit_vcdate" class="form-control" value="<?php echo $row['vcdate']; ?>"><br>
												<label for="edit_vcpic">PIC:</label><br>
												<?php
													$con = mysqli_connect("localhost","root","","saptest");

													$query = "SELECT * FROM user";
													$result1 = mysqli_query($con,$query);

													echo "<select name='edit_vcpic' class='selectpicker show-tick' title='Pilih User' data-width='auto'>";
													while ($row1 = mysqli_fetch_array($result1,MYSQLI_ASSOC))
													{
														if ($row['vcpic'] == $row1[userid])
														{
															echo "<option value='$row1[userid]' selected >$row1[userid] - $row1[userlname]</option>";
														} else {
															echo "<option value='$row1[userid]'>$row1[userid] - $row1[userlname]</option>";
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
													<button class="btn btn-default btn-success" type="submit" name="editCL" c_id="editCL" action="checklist.php?id=<?php echo $row['id']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
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
	</div><br /><br />
</body>

<script>
	var idxCols=0;
	var cols=[];
	var cols1=[];

	$(document).ready( function () {
    $('#tableChecklist').DataTable( {
		stateSave: true,
		"lengthMenu": [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]],
			dom: 'Blfrtip',
			buttons: [
				{
					extend: 'copyHtml5',
					exportOptions: {
						columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
					}
				},
				{
					extend: 'excelHtml5',
					exportOptions: {
						columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
					}
				},
				{
					extend: 'print',
					exportOptions: {
						columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
					}
				}
			],
		
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
		
		$('#select2').on( 'change', function () {
			column = cols[7];
			console.log(column);
			var val = $.fn.dataTable.util.escapeRegex(
				$(this).find(":selected").val()
			);
			console.log(val	);
			column
				.search( val ? '^'+val+'$' : '', true, false )
				.draw();
				
		} );
	} );
</script>