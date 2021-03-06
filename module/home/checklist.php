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
		
		$query = "SELECT * FROM v_check WHERE vcba = $idBA";
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = "INSERT INTO v_check (ccat,ctype,ctypedesc,ctcode,ctable,cstat,cmodul,vcba) SELECT ccat,ctype,ctypedesc,ctcode,ctable,cstat,cmodul, $idBA as vcba FROM m_check";
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
		$editvcheck = mysqli_real_escape_string($con,$_POST['edit_vcheck']);
		$editvctr = mysqli_real_escape_string($con,$_POST['edit_vctransreqs']);
		$editvcinfo = mysqli_real_escape_string($con,$_POST['edit_vcinfo']);
		$editvcdate = mysqli_real_escape_string($con,$_POST['edit_vcdate']);
		$editvcpic = mysqli_real_escape_string($con,$_POST['edit_vcpic']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$id = mysqli_real_escape_string($con,$_POST['id']);
		
		if(!mysqli_query($con,"UPDATE v_check SET vcheck='$editvcheck',vctransreqs='$editvctr',vcdate='$editvcdate',vcpic='$editvcpic',vcinfo='$editvcinfo',chg_by='$username',chg_date=now() WHERE id='$id'"))
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
					<li><a href="../../connection/con-logout.php"><b>Logout</b></a></li>
				</ul>
			</li>
		</ul>
		
	  </div>
	</nav>
	
	<div class="container-fluid">
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
	
	<?php if ($_SESSION['modul']=="SUPER") { ?>
	<div class="container-fluid">
		<select id="select1" class='selectpicker' title='Pilih Modul' data-width='auto'>
		<?php
				$sql = "SELECT idmodul FROM m_modul";
				$result = mysqli_query($con,$sql);

				while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<option value='$row[idmodul]'>$row[idmodul]</option>";
					$idmodul = $_GET['idmodul'];
				}
			?>
		</select>
	
	<?php } else {
		?> <div class="container-fluid">
		<?php
	} ?>
	
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
	</div><br>
	
	<div class="container-fluid">
		<table id="tableChecklist" class="table table-hover text-left table-striped compact cell-border">
			<thead>
				<tr>
					<th style="vertical-align:middle;" class="text-center"><b>Id</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Modul</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Cat.</b></th>
					<th style="vertical-align:middle;" class="text-center col-md-2"><b>Tipe Custom</b></th>
					<th style="vertical-align:middle;" class="text-center col-md-3"><b>Deskripsi Custom</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Tcode</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Tabel</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Status Custom</b></th>
					<th style="vertical-align:middle;" class="text-center"><b><span class="glyphicon glyphicon-ok"></span></b></th>
					<th style="vertical-align:middle;" class="text-center"><b>BA</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>TR</b></th>
					<th style="vertical-align:middle;" class="text-center col-md-1"><b>Date</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>PIC</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Keterangan</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Change By</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Change Date</b></th>
					<th style="vertical-align:middle;"></th>
				</tr>
			</thead>
			<tbody>
			<?php
				//if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
				if ($_SESSION['modul']=="SUPER")
				{
					$query = "SELECT * FROM v_check";
				}
				else
				{
					$query = "SELECT * FROM v_check WHERE cmodul='$_SESSION[modul]'";
					//$query = "SELECT * FROM c v_check JOIN b m_ba WHERE c.cmodul = '$_SESSION[modul]' AND c.vcba = b.idba AND '$_SESSION[username]' IN (b.p_fico,b.p_mm,b.p_pm,b.p_pp,b.p_sd)";
					//$query = "SELECT *, sappman.v_check.id as id, sappman.v_check.chg_by as chg_by, sappman.v_check.chg_date as chg_date FROM sappman.v_check INNER JOIN sappman.m_ba ON sappman.v_check.vcba=sappman.m_ba.idba  
								//WHERE cmodul='$_SESSION[modul]' AND '$_SESSION[username]' IN (sappman.m_ba.p_fico,sappman.m_ba.p_mm,sappman.m_ba.p_pm,sappman.m_ba.p_pp,sappman.m_ba.p_sd);";
				}
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style='vertical-align:middle;'>".$row['id']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['cmodul']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['ccat']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['ctype']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['ctypedesc']."</td>";
						echo "<td style='vertical-align:middle;' class='col-md-1 col-lg-1'>".$row['ctcode']."</td>";
						echo "<td style='vertical-align:middle;' class='col-md-1 col-lg-1'>".$row['ctable']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['cstat']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['vcheck']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['vcba']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['vctransreqs']."</td>";
						$origDate = $row['vcdate'];
						$newDate = date("d-m-Y", strtotime($origDate));
						//echo "<td style='vertical-align:middle;'>".$row['vcdate']."</td>";
						echo "<td style='vertical-align:middle;'>".$newDate."</td>";
						echo "<td style='vertical-align:middle;'>".$row['vcpic']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['vcinfo']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['chg_by']."</td>";	
						$origDate1 = $row['chg_date'];
						$newDate1 = date("d-M-Y H:i:s", strtotime($origDate1));
						echo "<td style='vertical-align:middle;'>$newDate1</td>";	
			?>
						<!-- Button Edit Checklist -->
						<td style="vertical-align:middle;" class="text-center"><button class='btn btn-info btn-xs button-edit' data-toggle='modal'><span class='glyphicon glyphicon-pencil'></span> Edit</button>
						</td> 			
			<?php
				}
			?>
				</tr>
			</tbody>
		</table>
	</div><br /><br />

	<!-- Modal Edit Checklist -->
	<div id="modalEdit" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Edit Checklist</h4>
				</div>
			  
				<div class="modal-body"><h5>
					<form action="" method="POST" name="formEditCL" class="text-left">
						<input type='hidden' name='id' id="input-id" value='' />
						<label><span class="glyphicon glyphicon-tasks"></span> <span id="display-ctype"> </span>: <span id= "display-ctypedesc"></span></label><br>
						<label><span class="glyphicon glyphicon-briefcase"></span> Untuk BA: <span id= "display-ba"></span> </label><br><br>
						<label for="edit_vcheck">Cek status custom?</label><br>
						<input type='radio' name='edit_vcheck' id="input-vcheck-ok" value='OK'> OK<br>
						<input type='radio' name='edit_vcheck' id="input-vcheck-belum" value=' '> Belum<br><br>
						<label for="edit_vctransreqs">No. <i>Transport Request</i>:</label>
						<input type="text" id="edit_vctransreqs" name="edit_vctransreqs" class="form-control"><br>
						<label for="edit_vcdate">Tanggal cek:</label>
						<input type="date" id="edit_vcdate" name="edit_vcdate" class="form-control"><br>
						<label for="edit_vcpic">PIC:</label><br>
						<?php
							//$query = "SELECT * FROM user";
							
							if ($_SESSION['modul']=="SUPER")
							{
								$query1 = "SELECT * FROM user";
							}
							else
								$query1 = "SELECT * FROM user WHERE usermodul='$_SESSION[modul]'";
							
							$result1 = mysqli_query($con,$query1);

							echo "<select name='edit_vcpic' class='selectpicker show-tick' title='Pilih User' data-width='auto' id='input-vpic'>";
							while ($row1 = mysqli_fetch_array($result1,MYSQLI_ASSOC))
							{
								echo "<option value='$row1[userid]'>$row1[userid] - $row1[userlname]</option>";
							}
							echo "</select>";
						?><br><br>
						<label for="edit_vcinfo">Keterangan:</label>
						<input type="text" id="edit_vcinfo" name="edit_vcinfo" class="form-control"><br>
						Terakhir diubah oleh <label id="display-chgby"></label>
						tanggal <label id="display-chgdate"></label>.					
						<br><br>
						<div class="modal-footer">
							<button class="btn btn-default btn-success" type="submit" name="editCL" id="editCL" action="checklist.php?id=<?php echo $row['id']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
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
	var cols1=[];

	$(document).ready( function () {
    var table = $('#tableChecklist').DataTable( {
		stateSave: true,
		stateDuration: -1,
		"lengthMenu": [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]],
			dom: 'Blfrtip',
			buttons: [
				{
					extend: 'copyHtml5',
					exportOptions: {
						columns: [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ]
					}
				},
				{
					extend: 'excelHtml5',
					exportOptions: {
						columns: [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ]
					}
				},
				{
					extend: 'print',
					exportOptions: {
						columns: [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ]
					}
				}
			],
		
		"columnDefs": [
				{
					"targets": [ 0, 1, 14, 15 ],
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
			column = cols[1];
			var val = $.fn.dataTable.util.escapeRegex(
				$(this).find(":selected").text()
			);
			
			column
				.search( val ? '^'+val+'$' : '', true, false )
				.draw();
				
		} );
		
		$('#select2').on( 'change', function () {
			column = cols[9];
			console.log(column);
			var val = $.fn.dataTable.util.escapeRegex(
				$(this).find(":selected").val()
			);
			console.log(val	);
			column
				.search( val ? '^'+val+'$' : '', true, false )
				.draw();
				
		} );

		$('#tableChecklist').on('click', 'tbody .button-edit', function () {
		    var data_row = table.row($(this).closest('tr')).data();
		    console.log(data_row);
		    $('#input-id').val(data_row[0]);
			$('#display-ctype').text(data_row[3]);
			$('#display-ctypedesc').text(data_row[4]);
			$('#display-ba').text(data_row[9]);
			$('#display-chgby').text(data_row[14]);
			$('#display-chgdate').text(data_row[15]);
			var date_str = data_row[11].split("-");
			$('#edit_vcdate').val(date_str[2]+"-"+date_str[1]+"-"+date_str[0])
			$('#edit_vctransreqs').val(data_row[10]);
			$('#edit_vcinfo').val(data_row[13]);
			$('#input-id').val(data_row[0]);
			var options = $('#input-vpic').children()
			for (i = 0; i < options.length; i++) { 
				console.log(options.eq(i).attr("value"))
				console.log(data_row[12])
			    if (options.eq(i).attr("value") == data_row[12]) {
			   		options.eq(i).attr("selected", true)
			   		break;
			    }
			}
			$('#input-vpic').trigger("change");
			if (data_row[8]=="OK")
				$('#input-vcheck-ok').attr('checked', true);
			else 
				$('#input-vcheck-belum').attr('checked', true);

			$('#modalEdit').modal('show');	
		})
	} );
</script>