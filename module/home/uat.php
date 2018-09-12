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
	
	if (isset($_POST['submit']))
	{
		$idBA = mysqli_real_escape_string($con, $_POST['idba']);
		$uatScn = mysqli_real_escape_string($con, $_POST['uat_scn']);
		
		$query = "SELECT * FROM v_uat WHERE vuba = $idBA AND uat_scn = '$uatScn'";
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
		$editvuin = mysqli_real_escape_string($con,$_POST['edit_vuinput']);
		$editvuout = mysqli_real_escape_string($con,$_POST['edit_vuoutput']);
		$editvuinfo = mysqli_real_escape_string($con,$_POST['edit_vuinfo']);
		$editvudate = mysqli_real_escape_string($con,$_POST['edit_vudate']);
		$editvupic = mysqli_real_escape_string($con,$_POST['edit_vupic']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$id = mysqli_real_escape_string($con,$_POST['id']);
		
		if(!mysqli_query($con,"UPDATE v_uat SET vuinput='$editvuin',vuoutput='$editvuout',vudate='$editvudate',vupic='$editvupic',vuinfo='$editvuinfo',chg_by='$username',chg_date=now() WHERE id='$id'"))
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
					<li><a href="../../connection/con-logout.php"><b>Logout</b></a></li>
				</ul>
			</li>
		</ul>
		
	  </div>
	</nav>
	
	<div class="container-fluid">
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
									$sql = "SELECT * FROM m_ba ORDER BY idba ASC";
									$result = mysqli_query($con,$sql);

									echo "<select name='idba' class='selectpicker show-tick' title='Pilih BA' data-width='auto'>";
									while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
									{
										echo "<option value='$row[idba]'>$row[idba] - $row[nameba]</option>";
									}
									echo "</select>";
								?><br /><br />
								<label for="uat_scn">Skenario UAT:</label><br>
								<?php
									$sql1 = "SELECT * FROM m_uat_scn";
									$result1 = mysqli_query($con,$sql1);

									echo "<select name='uat_scn' class='selectpicker show-tick' title='Pilih Skenario UAT' data-width='auto'>";
									while ($row = mysqli_fetch_array($result1,MYSQLI_ASSOC))
									{
										echo "<option value='$row[uat_scn]'>$row[uat_scn]</option>";
									}
									echo "</select>";
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
	
	<div class="container-fluid">
		<select id="select1" class="selectpicker show-tick" title="Pilih Skenario UAT" onchange="getval(this);" data-width="auto">     <!-- edit onChange event ini/edit javascript supaya include semua -->
			<?php
				$query = "SELECT uat_scn, uat_desc FROM m_uat_scn";
				$result = mysqli_query($con,$query);
				
				while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<option value='$row[uat_desc]'>$row[uat_scn]</option>";
					$uat_desc = $_GET['uat_desc'];
				}
			?>
		</select>
		
		<select id="select2" class='selectpicker show-tick' title='Pilih Business Area' data-width='auto'>
		<?php
				$sql = "SELECT * FROM m_ba ORDER BY idba ASC";
				$result = mysqli_query($con,$sql);

				while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<option value='$row[idba]'>$row[idba] - $row[nameba]</option>";
					$idba = $_GET['idba'];
				}
			?>
		</select>
	</div>
		
	<div class="container-fluid">
		<br>Deskripsi UAT: <label for="uatDesc" id="uatDesc"></label>
		
		<br><br>
		<table id="tableUAT" class="table table-hover text-left table-striped compact cell-border">
			<thead>
				<tr>
					<th style="vertical-align:middle;" class="text-center"><b>id</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>No. Step</b></th>
					<th style="vertical-align:middle;" class="text-center col-md-2 col-lg-2"><b>Skenario</b></th>
					<th style="vertical-align:middle;" class="text-center col-md-3 col-lg-3"><b>Deskripsi Step</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Tcode</b></th>
					<th style="vertical-align:middle;" class="text-center col-md-1 col-lg-1"><b>User</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>BA</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Input</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Output</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>PIC</b></th>
					<th style="vertical-align:middle;" class="text-center col-md-1 col-lg-1"><b>Run Date</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Keterangan</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Change By</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Change Date</b></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<?php
				//if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
				/*if ($_SESSION['modul']=="SUPER")
				{
					$query = "SELECT * FROM v_uat";
				}
				else
				{
					$query = "SELECT * FROM v_uat";
					//$query = "SELECT *, sappman.v_uat.id as id, sappman.v_uat.chg_by as chg_by, sappman.v_uat.chg_date as chg_date FROM sappman.v_uat INNER JOIN sappman.m_ba ON sappman.v_uat.vuba=sappman.m_ba.idba 
					//			WHERE '$_SESSION[username]' IN (sappman.m_ba.p_fico,sappman.m_ba.p_mm,sappman.m_ba.p_pm,sappman.m_ba.p_pp,sappman.m_ba.p_sd);";
				}*/
				
				$query = "SELECT * FROM v_uat";
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style='vertical-align:middle;'>".$row['id']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['no_step']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['uat_scn']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['bp_step']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['tcode_step']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['user_step']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['vuba']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['vuinput']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['vuoutput']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['vupic']."</td>";
						$origDate = $row['vudate'];
						$newDate = date("d-m-Y", strtotime($origDate));
						echo "<td style='vertical-align:middle;'>".$newDate."</td>";
						echo "<td style='vertical-align:middle;'>".$row['vuinfo']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['chg_by']."</td>";	
						$origDate1 = $row['chg_date'];
						$newDate1 = date("d-M-Y H:i:s", strtotime($origDate1));
						echo "<td style='vertical-align:middle;'>$newDate1</td>";
						?>
						<!-- Button Edit Checklist -->
						<td style="vertical-align:middle;" class="text-center"><button class='btn btn-info btn-xs button-edit' data-toggle='modal'><span class='glyphicon glyphicon-pencil'></span> Edit</button>
						</td>
					</tr>
			<?php
				}
			?>
			</tbody>
		</table>
	</div>
	<br /><br />

	<!-- Modal Edit Checklist -->
	<div id="modalEdit" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Edit Step UAT</h4>
				</div>
			  
				<div class="modal-body"><h5>
					<form action="" method="POST" name="formEditUAT" class="text-left">
						<input id="input-id" type='hidden' name='id'/>
						<label><span class="glyphicon glyphicon-tasks"></span> <span id="display-utype"></span>: <span id="display-utypedesc"></span></label><br>
						<label><span class="glyphicon glyphicon-briefcase"></span> Untuk BA: <span id="display-ba"></span></label><br><br>
						<label for="edit_vuinput">Input Data/<i>Special Information</i>:</label>
						<input type="text" id="edit_vuinput" name="edit_vuinput" class="form-control" value="<?php echo $row['vuinput']; ?>"><br>
						<label for="edit_vuoutput">Output Data/<i>Result</i>:</label>
						<input type="text" id="edit_vuoutput" name="edit_vuoutput" class="form-control" value="<?php echo $row['vuoutput']; ?>"><br>
						<label for="edit_vcdate">Tanggal run:</label>
						<input type="date" id="edit_vudate" name="edit_vudate" class="form-control" value="<?php echo $row['vudate']; ?>"><br>
						<label for="edit_vupic">PIC:</label><br>
						<?php
							//$query = "SELECT * FROM user";
							
							if ($_SESSION['modul']=="SUPER")
							{
								$query1 = "SELECT * FROM user";
							}
							else
								$query1 = "SELECT * FROM user WHERE usermodul='$_SESSION[modul]'";
							
							$result1 = mysqli_query($con,$query1);

							echo "<select id='input-upic' name='edit_vupic' class='selectpicker show-tick' title='Pilih User' data-width='auto'>";
							while ($row1 = mysqli_fetch_array($result1,MYSQLI_ASSOC))
							{
								echo "<option value='$row1[userid]'>$row1[userid] - $row1[userlname]</option>";
							}
							echo "</select>";
						?><br><br>
						<label for="edit_vcinfo">Keterangan:</label>
						<input type="text" id="edit_vuinfo" name="edit_vuinfo" class="form-control"><br>
						Terakhir diubah oleh <label id="display-chgby"></label>
						tanggal <label id="display-chgdate"></label>.

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

</body>

<script>
	var idxCols=0;
	var cols=[];
								
	$(document).ready(function() {
		var table = $('#tableUAT').DataTable( {
			stateSave: true,
			stateDuration: -1,
			"lengthMenu": [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]],
			dom: 'Blfrtip',
			buttons: [
				{
					extend: 'copyHtml5',
					exportOptions: {
						columns: [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ]
					}
				},
				{
					extend: 'excelHtml5',
					exportOptions: {
						columns: [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ]
					}
				},
				{
					extend: 'print',
					exportOptions: {
						columns: [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ]
					}
				}
			],
			
			"columnDefs": [
				{
					"targets": [ 0, 1, 12, 13 ],
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
			column = cols[2];
			var val = $.fn.dataTable.util.escapeRegex(
				$(this).find(":selected").text()
			);
			
			column
				.search( val ? '^'+val+'$' : '', true, false )
				.draw();
		} );
		
		$('#select2').on( 'change', function () {
			column = cols[6];
			console.log(column);
			var val = $.fn.dataTable.util.escapeRegex(
				$(this).find(":selected").val()
			);
			console.log(val	);
			column
				.search( val ? '^'+val+'$' : '', true, false )
				.draw();
				
		} );

		$('#tableUAT').on('click', 'tbody .button-edit', function () {
		    var data_row = table.row($(this).closest('tr')).data();
		    console.log(data_row);
		    $('#input-id').val(data_row[0]);
			$('#display-utype').text(data_row[2]);
			$('#display-utypedesc').text(data_row[3]);
			$('#display-ba').text(data_row[6]);
			$('#display-chgby').text(data_row[12]);
			$('#display-chgdate').text(data_row[13]);
			var date_str = data_row[10].split("-");
			$('#edit_vudate').val(date_str[2]+"-"+date_str[1]+"-"+date_str[0])
			$('#edit_vuinput').val(data_row[7])
			$('#edit_vuoutput').val(data_row[8])
			$('#edit_vuinfo').val(data_row[11])
			var options = $('#input-upic').children()
			for (i = 0; i < options.length; i++) { 
				if (options.eq(i).attr("value") == data_row[9]) {
			   		options.eq(i).attr("selected", true)
			   		break;
			    }
			}
			$('#input-upic').trigger("change");

			$('#modalEdit').modal('show');	
		});
	} );
</script>