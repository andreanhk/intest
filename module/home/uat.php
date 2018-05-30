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
		$uatScn = mysqli_real_escape_string($con, $_POST['uat_scn']);
		
		$query = "SELECT * FROM v_uat WHERE vuba = $idBA AND uat_scn = $uatScn";
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = "INSERT INTO v_uat (uat_scn,no_step,bp_step,tcode_step,user_step,vuba) SELECT uat_scn,no_step,bp_step,tcode_step,user_step, $idBA as vuba FROM m_uat_step WHERE uat_scn = '$uatScn'";
			mysqli_query($con,$query);
			header("location:uat.php");
		}
		else
		{
			echo '<script language="javascript">';
			echo 'alert("Skenario UAT sudah ada!")';
			echo '</script>';
		}
	}
	
	if (isset($_POST['editUAT']))
	{	
		$con = mysqli_connect("localhost","root","","saptest");
		
		$editvuin = mysqli_real_escape_string($con,$_POST['edit_vuinput']);
		$editvuout = mysqli_real_escape_string($con,$_POST['edit_vuoutput']);
		$editvudate = mysqli_real_escape_string($con,$_POST['edit_vudate']);
		$editvupic = mysqli_real_escape_string($con,$_POST['edit_vupic']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$id = mysqli_real_escape_string($con,$_POST['id']);
		
		if(!mysqli_query($con,"UPDATE v_uat SET vuinput='$editvuin',vuoutput='$editvuout',vudate='$editvudate',vupic='$editvupic',chg_by='$username',chg_date=now() WHERE id='$id'"))
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

<title>User Acceptance Test</title>

<!-- Mobile Specifics -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="HandheldFriendly" content="true"/>
<meta name="MobileOptimized" content="320"/>   

<!-- Mobile Internet Explorer ClearType Technology -->
<!--[if IEMobile]>  <meta http-equiv="cleartype" content="on">  <![endif]-->

<!-- Bootstrap -->
<link href="<?php echo $root; ?>assets/css/bootstrap.min.css" rel="stylesheet">

<!-- Javascript -->
<script src="<?php echo $root; ?>assets/js/jquery-2.2.4.js"></script>
<script src="<?php echo $root; ?>assets/js/bootstrap.min.js"></script>

<!-- Fav Icon -->
<link rel="icon" href="<?php echo $root; ?>assets/images/samator.ico" type="image/ico">

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

<script type="text/javascript">
	function getval(sel)
	{
		//alert(sel.value);
		//var descText = $('option.selected',this).text();
		$('#uatDesc').text(sel.value);
	}
</script>

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
			<li><a href="<?php echo $root; ?>module/home/checklist.php">Checklist</a></li>
			<li class="active"><a href="<?php echo $root; ?>module/home/uat.php"><b>U A T</b></a></li>
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
		<h1>User Acceptance Test
		
		<!--<a class="btn btn-danger pull-right"><span class="glyphicon glyphicon-remove"></span></a>-->
			<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#modalAddUAT"><span class="glyphicon glyphicon-plus"></span> <b>Tambah UAT Baru</b></button>
			
			<!-- Modal Add User -->
			<div id="modalAddUAT" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Tambah UAT Baru</h4>
						</div>
						
						<div class="modal-body"><h5>
							<form action="" method="POST" name="form_addUAT">
								<label for="idba">Kode business area:</label><br>
								<?php
									$con = mysqli_connect("localhost","root","","saptest");

									$sql = "SELECT * FROM m_ba";
									$result = mysqli_query($con,$sql);

									echo "<select name='idba' class='selectpicker show-tick' title='Pilih BA'>";
									while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
									{
										echo "<option value='$row[idba]'>$row[idba] - $row[nameba]</option>";
									}
									echo "</select>";
									$con->close();
								?><br /><br />
								<label for="uat_scn">Skenario UAT:</label><br>
								<?php
									$con = mysqli_connect("localhost","root","","saptest");

									$sql1 = "SELECT * FROM m_uat_scn";
									$result1 = mysqli_query($con,$sql1);

									echo "<select name='uat_scn' class='selectpicker show-tick' title='Pilih Skenario UAT'>";
									while ($row = mysqli_fetch_array($result1,MYSQLI_ASSOC))
									{
										echo "<option value='$row[uat_scn]'>$row[uat_scn]</option>";
									}
									echo "</select>";
									$con->close();
								?><br /><br />
								<div class="modal-footer">
									<button class="btn btn-default btn-success" type="submit" name="submit" id="submit" method="POST" action="uat.php"><span class="glyphicon glyphicon-plus"></span> Tambah</button>
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
		<select class="selectpicker show-tick" title="Pilih Skenario UAT" id="select1" onchange="getval(this);" data-width="auto">     <!-- edit onChange event ini/edit javascript supaya include semua -->
			<?php
				$con = mysqli_connect("localhost","root","","saptest");
				
				$query = "SELECT uat_scn, uat_desc FROM m_uat_scn";
				$result = mysqli_query($con,$query);
				
				while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					
					echo "<option value='$row[uat_desc]'>$row[uat_scn]</option>";
					$uat_desc = $_GET['uat_desc'];
				}
				
				$con->close();
			?>
		</select>
		
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
	</div>
		
	<div class="container container-fluid">
		<br>Deskripsi UAT: <label for="uatDesc" id="uatDesc"></label>
		
		<br><br>
		<table id="tableUAT" class="table table-hover text-center table-striped compact cell-border">
			<thead>
				<tr>
					<th class="text-center"><b>No. Step</b></th>
					<th class="text-center col-md-2 col-lg-2"><b>Skenario</b></th>
					<th class="text-center col-md-3 col-lg-3"><b>Deskripsi Step</b></th>
					<th class="text-center"><b>Tcode</b></th>
					<th class="text-center col-md-1 col-lg-1"><b>User</b></th>
					<th class="text-center"><b>BA</b></th>
					<th class="text-center"><b>Input</b></th>
					<th class="text-center"><b>Output</b></th>
					<th class="text-center"><b>PIC</b></th>
					<th class="text-center col-md-1 col-lg-1"><b>Run Date</b></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<?php
				$con = mysqli_connect("localhost","root","","saptest");

				$query = "SELECT * FROM v_uat";
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style:'border=1px solid black'>".$row['no_step']."</td>";
						echo "<td style:'border=1px solid black'>".$row['uat_scn']."</td>";
						echo "<td style:'border=1px solid black'>".$row['bp_step']."</td>";
						echo "<td style:'border=1px solid black'>".$row['tcode_step']."</td>";
						echo "<td style:'border=1px solid black'>".$row['user_step']."</td>";
						echo "<td style:'border=1px solid black'>".$row['vuba']."</td>";
						echo "<td style:'border=1px solid black'>".$row['vuinput']."</td>";
						echo "<td style:'border=1px solid black'>".$row['vuoutput']."</td>";
						echo "<td style:'border=1px solid black'>".$row['vupic']."</td>";
						$origDate = $row['vudate'];
						$newDate = date("d-M-Y", strtotime($origDate));
						echo "<td style:'border=1px solid black'>".$newDate."</td>";
						?>
						<!-- Button Edit Checklist -->
							<td><a type='button' class='btn btn-info btn-xs' data-toggle='modal' href="#modalEditUAT<?php echo $row['id']; ?>"><span class='glyphicon glyphicon-pencil'></span></a> 
							
							<!-- Modal Edit Checklist -->
							<div id="modalEditUAT<?php echo $row['id']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Edit Step UAT</h4>
										</div>
									  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formEditUAT" class="text-left">
												<input type='hidden' name='id' value='<?php echo $row['id']; ?>' />
												<label><span class="glyphicon glyphicon-tasks"></span> <?php echo $row['uat_scn']; ?>: <?php echo $row['bp_step'];?></label><br>
												<label><span class="glyphicon glyphicon-briefcase"></span> Untuk BA: <?php echo $row['vuba']; ?></label><br><br>
												<label for="edit_vuinput">Input Data/<i>Special Information</i>:</label>
												<input type="text" id="edit_vuinput" name="edit_vuinput" class="form-control" value="<?php echo $row['vuinput']; ?>"><br>
												<label for="edit_vuoutput">Output Data/<i>Result</i>:</label>
												<input type="text" id="edit_vuoutput" name="edit_vuoutput" class="form-control" value="<?php echo $row['vuoutput']; ?>"><br>
												<label for="edit_vcdate">Tanggal run:</label>
												<input type="date" id="edit_vudate" name="edit_vudate" class="form-control" value="<?php echo $row['vudate']; ?>"><br>
												<label for="edit_vupic">PIC:</label><br>
												<?php
													$con = mysqli_connect("localhost","root","","saptest");

													$query = "SELECT * FROM user";
													$result1 = mysqli_query($con,$query);

													echo "<select name='edit_vupic' class='selectpicker show-tick' title='Pilih User' data-width='auto'>";
													while ($row1 = mysqli_fetch_array($result1,MYSQLI_ASSOC))
													{
														if ($row['vupic'] == $row1[userid])
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
													<button class="btn btn-default btn-success" type="submit" name="editUAT" id="editUAT" action="uat.php?id=<?php echo $row['id']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
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
	<br /><br />
</body>

<script>
	var idxCols=0;
	var cols=[];
								
	$(document).ready(function() {
		$('#tableUAT').DataTable( {
			stateSave: true,
			"lengthMenu": [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]],
			dom: 'Blfrtip',
			buttons: [
				{
					extend: 'copyHtml5',
					exportOptions: {
						columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
					}
				},
				{
					extend: 'excelHtml5',
					exportOptions: {
						columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
					}
				},
				{
					extend: 'print',
					exportOptions: {
						columns: [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
					}
				}
			],
			
			"columnDefs": [
				{
					"targets": [ 1 ],
					"visible": false,
				}
			],
			
			initComplete: function () {
				this.api().columns().every( function () {
					cols.push(this);
					idxCols++;
				} );
			}
		} );
		
		$('#select1').on( 'change', function () {
			column = cols[1];
			var val = $.fn.dataTable.util.escapeRegex(
				$(this).find(":selected").text()
			);
			
			column
				.search( val ? '^'+val+'$' : '', true, false )
				.draw();
		} );
		
		$('#select2').on( 'change', function () {
			column = cols[5];
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