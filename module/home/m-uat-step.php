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

	$stepname = "";
	$steptcode = "";
	$stepuser = "";
	$stepscn = "";
	$stepmodul = "";
	$result1 = "";
	
	if (isset($_POST['submit']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
		
		$stepname = mysqli_real_escape_string($con, $_POST['new_stepname']);
		$steptcode = mysqli_real_escape_string($con, $_POST['new_steptcode']);
		$stepuser = mysqli_real_escape_string($con, $_POST['new_stepuser']);
		$stepscn = mysqli_real_escape_string($con, $_POST['uat_scn']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$query = 'SELECT * FROM m_uat_step WHERE bp_step="'.$stepname.'" AND uat_scn="'.$stepscn.'"';
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = 'INSERT INTO m_uat_step(uat_scn,bp_step,tcode_step,user_step,chg_by,chg_date) VALUES ("'.$stepscn.'","'.$stepname.'","'.$steptcode.'","'.$stepuser.'","'.$username.'",now())';
			$result1 = mysqli_query($con,$query);
			header("location:m-uat-step.php?submit=1");
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
		
		mysqli_query($con,"DELETE FROM m_uat_step WHERE id_step='".$id."'");
		mysqli_close($con);
		header("Location:m-uat-step.php");
	}
		
	if (isset($_POST['editStep']))
	{	
		$con = mysqli_connect("localhost","root","","saptest");
		
		$editStepName = mysqli_real_escape_string($con,$_POST['edit_stepname']);
		$editStepTcode = mysqli_real_escape_string($con,$_POST['edit_steptcode']);
		$editStepUser = mysqli_real_escape_string($con,$_POST['edit_stepuser']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$id = mysqli_real_escape_string($con,$_POST['id_step']);
		
		if(!mysqli_query($con,"UPDATE m_uat_step SET bp_step='$editStepName',tcode_step='$editStepTcode',user_step='$editStepUser',chg_by='$username',chg_date=now() WHERE id_step='$id'"))
		{
			echo mysqli_error($con);
		}
		
		mysqli_close($con);
		#header("Location:m-uat-step.php");
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

<title>Master Data: Step UAT</title>

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
		<h1>Master Data Step UAT
		<?php
				if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
				{
			?>
			
			<a id="btn_tambahstep" class="btn btn-success text-right pull-right" data-toggle="modal" data-target="#modaladd_uatstep"><span class="glyphicon glyphicon-plus"></span> <b>Tambah Step</b></a>
			
			<!-- Modal Add Step Baru -->
			<div id="modaladd_uatstep" class="modal fade" role="dialog">
				<div class="modal-dialog modal-lg">

				<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Tambah Step UAT Baru</h4>
						</div>
						<div class="modal-body"><h5>
							<form action="m-uat-step.php" method="POST" name="form_addstep">
								<label for="new_stepname">Nama step:</label>
								<input type="text" id="new_stepname" name="new_stepname" class="form-control" placeholder="Contoh: Buat Sales Order" required="" autofocus=""><br>
								<label for="new_steptcode">Tcode step:</label>
								<input type="text" id="new_steptcode" name="new_steptcode" class="form-control" placeholder="Contoh: VA01" required=""><br>
								<label for="new_stepuser">User step:</label>
								<input type="text" id="new_stepuser" name="new_stepuser" class="form-control" placeholder="Contoh: Sales Counter" required=""><br>
								<label for="uat_scn">Skenario step:</label><br />
								<?php
									$con = mysqli_connect("localhost","root","","saptest");

									$sql = "SELECT uat_scn FROM m_uat_scn";
									$result = mysqli_query($con,$sql);

									echo "<select name='uat_scn' class='selectpicker' title='Pilih Skenario' data-width='auto'>";
									while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
									{
										echo "<option value='$row[uat_scn]'>$row[uat_scn]</option>";
									}
									echo "</select>";
									
									$con->close();
								?>
								<br><br>
								<div class="modal-footer">
									<button class="btn btn-default btn-success" type="submit" name="submit" id="submit" method="POST"><span class="glyphicon glyphicon-plus"></span> Tambah</button>
									<a class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</a>
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
		<select id="select1" onchange="getval(this);" class="selectpicker" title="Pilih Skenario">     <!-- edit onChange event ini/edit javascript supaya include semua -->
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
	</div><br>
	
	<div class="container container-fluid">
		<table id="tableStep" class="table table-hover text-center table-striped compact cell-border">
			<thead>
				<tr>
					<!--<td><b>Modul</b></td>-->
					<td><b>No. Step</b></td>
					<td><b>Nama Skenario</b></td>
					<td><b>Step</b></td>
					<td><b>Tcode</b></td>
					<td><b>User</b></td>
					<?php if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS") { ?>
					<td class="col-md-1"></td>
					<?php } else {} ?>
				</tr>
			</thead>
			<tbody>
			<?php
				$con = mysqli_connect("localhost","root","","saptest");

				$query = "SELECT * FROM m_uat_scn c JOIN m_uat_step t WHERE c.uat_scn = t.uat_scn";
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						//echo "<td style:'border=1px solid black'>".$row['uat_modul']."</td>";
						echo "<td style:'border=1px solid black'>".$row['no_step']."</td>";
						echo "<td style:'border=1px solid black'>".$row['uat_scn']."</td>";
						echo "<td style:'border=1px solid black'>".$row['bp_step']."</td>";
						echo "<td style:'border=1px solid black'>".$row['tcode_step']."</td>";
						echo "<td style:'border=1px solid black'>".$row['user_step']."</td>";
					if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
						{
			?>
							<!-- Button Edit Step UAT -->
							<td><a type='button' class='btn btn-info btn-xs' data-toggle='modal' href="#modalEditStep<?php echo $row['id_step']; ?>"><span class='glyphicon glyphicon-pencil'></span></a> 
							
							<!-- Modal Edit Scenario UAT -->
							<div id="modalEditStep<?php echo $row['id_step']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog modal-lg">
								
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Edit Step UAT <?php echo $row['bp_step']; ?></h4>
										</div>
									  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formEditStep" class="text-left">
												<input type='hidden' name='id_step' value='<?php echo $row['id_step']; ?>' />
												<label for="edit_stepname">Edit nama step:</label>
												<input type="text" id="edit_stepname" name="edit_stepname" class="form-control" value="<?php echo $row['bp_step']; ?>" required=""><br>
												<label for="edit_steptcode">Edit Tcode:</label>
												<input type="text" id="edit_steptcode" name="edit_steptcode" class="form-control" value="<?php echo $row['tcode_step']; ?>" required=""><br>
												<label for="edit_scndesc">Edit user:</label>
												<input type="text" id="edit_stepuser" name="edit_stepuser" class="form-control" value="<?php echo $row['user_step']; ?>" required=""><br>
												Terakhir diubah oleh <label><?php echo $row['chg_by']; ?></label>
												<?php
													$origDate = $row['chg_date'];
													$newDate = date("d-M-Y H:i:s", strtotime($origDate));
												?>
												tanggal <label><?php echo $newDate; ?></label>.
												<br><br>
												<div class="modal-footer">
													<button class="btn btn-default btn-success" type="submit" name="editStep" id="editStep" action="m-uat-step.php?id=<?php echo $row['id_step']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
													<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<!-- Button Delete Scenario UAT -->
							<a type='button' class='btn btn-danger btn-xs' data-toggle='modal' href="#modalDelStep<?php echo $row['id_step']; ?>"><span class='glyphicon glyphicon-trash'></span></a></td>

							<!-- Modal Delete Scenario UAT -->
							<div id="modalDelStep<?php echo $row['id_step']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Hapus Step UAT</h4>
										</div>
										  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formDelStep">
												<label>Anda yakin akan menghapus step </label>
												<label type="text" id="stepToDel" name="stepToDel"><?php echo $row['bp_step']; ?>?</label>
												<br><br>
												<div class="modal-footer">
													<a class="btn btn-default btn-success" name="del" id="del" href="m-uat-step.php?del=x&id=<?php echo $row['id_step']; ?>"><span class="glyphicon glyphicon-trash"></span> Hapus</a>
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
	</div><br /><br />
</body>

<script>
	var idxCols=0;
	var cols=[];
								
	$(document).ready(function() {
		$('#tableStep').DataTable( {
			stateSave: true,
			"order": [[ 1, "asc" ]],
			"lengthMenu": [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]],
			
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
				
		var flag = getParameterByName('submit');
		if (flag == "1") {
			$("#btn_tambahstep").click();
		}
		} );
		
	function getParameterByName(name, url) {
		if (!url) url = window.location.href;
		name = name.replace(/[\[\]]/g, "\\$&");
		var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
			results = regex.exec(url);
		if (!results) return null;
		if (!results[2]) return '';
		return decodeURIComponent(results[2].replace(/\+/g, " "));
	}
</script>