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
					<li><a href="<?php echo $root; ?>module/home/m-user.php">User</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-modul.php">Modul</a></li>
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
		<h1>User Acceptance Test</h1>
	</div>
	
	<div class="container container-fluid">
		<select class="selectpicker" title="Pilih Skenario UAT" id="select1" onchange="getval(this);" >     <!-- edit onChange event ini/edit javascript supaya include semua -->
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
	</div>
		
	<div class="container container-fluid">
		<br>Deskripsi UAT: <label for="uatDesc" id="uatDesc"></label>
		
		<br><br>
		<table id="tableUAT" class="table table-hover text-center table-striped compact">
			<thead>
				<tr>
					<th class="text-center"><b>No. Step</b></th>
					<th class="text-center"><b>Skenario</b></th>
					<th class="text-center"><b>Deskripsi Skenario</b></th>
					<th class="text-center"><b>Deskripsi Step</b></th>
					<th class="text-center"><b>Tcode</b></th>
					<th class="text-center"><b>User</b></th>
				</tr>
			</thead>
			<tbody>
			<?php
				$con = mysqli_connect("localhost","root","","saptest");

				$query = "SELECT * FROM m_uat_scn c JOIN m_uat_step t ON c.uat_scn = t.uat_scn";
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style:'border=1px solid black'>".$row['no_step']."</td>";
						echo "<td style:'border=1px solid black'>".$row['uat_scn']."</td>";
						echo "<td style:'border=1px solid black'>".$row['uat_desc']."</td>";
						echo "<td style:'border=1px solid black'>".$row['bp_step']."</td>";
						echo "<td style:'border=1px solid black'>".$row['tcode_step']."</td>";
						echo "<td style:'border=1px solid black'>".$row['user_step']."</td>";
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
			
			"lengthMenu": [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]],
			
			"columnDefs": [
				{
					"targets": [ 1 ],
					"visible": false,
				},
				{
					"targets": [ 2 ],
					"visible": false,
				}
			],
			
			initComplete: function () {
				this.api().columns().every( function () {
					cols.push(this);
					idxCols++;
					/*var column = this;
					var select = $('<select><option value=""></option></select>')
						.appendTo( $(column.header()) )
						.on( 'change', function () {
							var val = $.fn.dataTable.util.escapeRegex(
								$(this).val()
							);
						
						console.log($(this).val());
	 
							column
								.search( val ? '^'+val+'$' : '', true, false )
								.draw();
						} );
	 
					column.data().unique().sort().each( function ( d, j ) {
						select.append( '<option value="'+d+'">'+d+'</option>' )
					} );*/
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
	} );
</script>