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
					<td><b>Modul</b></td>
					<td class="col-md-2"><b>Tipe Custom</b></td>
					<td class="col-md-3"><b>Deskripsi Custom</b></td>
					<td><b>Tcode</b></td>
					<td><b>Tabel</b></td>
					<td><b>Status Custom</b></td>
					<td><b><span class="glyphicon glyphicon-ok"></span></b></td>
					<td><b>BA</b></td>
					<td><b>TR</b></td>
					<td class="col-md-1"><b>Date</b></td>
					<td><b>PIC</b></td>
				</tr>
			</thead>
			<tbody>
			
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
			"processing": true,
			"serverSide": true,
	        "ajax": "../ajax/checklist.php"
	    });
	} );
</script>