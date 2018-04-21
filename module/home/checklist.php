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
		
		$query = 'SELECT * FROM m_uat_step t JOIN m_uat_scn c WHERE t.bp_step="'.$stepname.'" AND c.uat_scn="'.$stepscn.'"';
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = 'INSERT INTO ';
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
?>

<!DOCTYPE html>
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

<!-- Bootstrap Select -->
<link href="<?php echo $root; ?>assets/bs-select/css/bootstrap-select.min.css" rel="stylesheet">
<script src="<?php echo $root; ?>assets/bs-select/js/bootstrap-select.min.js"></script>

<!-- Fav Icon -->
<link rel="icon" href="<?php echo $root; ?>assets/images/samator.ico" type="image/ico">

<script type="text/javascript">
	function getval(sel)
	{
		$('#nameBA').text(sel.value);
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
					<li><a href="<?php echo $root; ?>module/home/m-user.php">User</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-modul.php">Modul</a></li>
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
		<?php
				if ($_SESSION['modul']!="")
				{
			?>
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

							$sql = "SELECT * FROM m_ba";
							$result = mysqli_query($con,$sql);

							echo "<select name='idba' class='selectpicker' title='Pilih BA' onchange='getval(this);'>";
							while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
							{
								echo "<option value='$row[nameba]'>$row[idba]</option>";
							}
							echo "</select>";
						?>
						<br><br>BA yang dipilih: <label for="nameBA" id="nameBA"></label><br><br>
						
						<div class="modal-footer">
							<button class="btn btn-default btn-success" type="submit" name="submit" id="submit" method="POST" action="checklist.php"><span class="glyphicon glyphicon-floppy-disk"></span> Tambah</button>
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
	
	<?php if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS") { ?>
	<div class="container container-fluid">
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
	</div><br>
	<?php } else {} ?>
	
	<div class="container container-fluid">
		<table id="tableChecklist" class="table table-hover text-center table-striped compact">
			<thead>
				<tr>
					<td><b>Modul</b></td>
					<td><b>Custom Type</b></td>
					<td><b>Custom Description</b></td>
					<td><b>Tcode</b></td>
					<td><b>Table</b></td>
					<td><b>Custom Status</b></td>
				</tr>
			</thead>
			<tbody>
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
    $('#tableChecklist').DataTable( {
		
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