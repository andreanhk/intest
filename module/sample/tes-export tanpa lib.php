<html>

<?php
	$root = "../../";
	require "../template/setting.php";
	
	
	if (isset($_POST['export']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
	
		$query = "SELECT * FROM user";
		$result = mysqli_query($con,$query);
		
		var_dump($result);
		die();
		while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
		{
			echo "<tr>";
				echo "<td style:'border=1px solid black'>".$row['userid']."</td>";
				echo "<td style:'border=1px solid black>".$row['userlname']."</td>";
				echo "<td style:'border=1px solid black>".$row['usermodul']."</td>";
				echo "<td style:'border=1px solid black>".$row['chg_by']."</td>";
				echo "<td style:'border=1px solid black>".$row['chg_date']."</td>";
			echo "</tr>";
		}
		
		header("Content-type: application/vnd-ms-excel");
		header("Content-Disposition: attachment; filename=tada.xls");
		
	}
?>
<head>
</head>

<link href="<?php echo $root; ?>assets/css/bootstrap.min.css" rel="stylesheet">

<body>
<h1 class="text-center">List user</h1>

<div class="align-center">
	<button type="submit" method="POST" id="export" name="export" class="btn btn-info" action="a.php">Ekspor ke .xls</button>
</div>

<?php
	$con = mysqli_connect("localhost","root","","saptest");
	
	$query = "SELECT * FROM user";
	$result = mysqli_query($con,$query);
	
	echo "<div class='container'>";
	
	echo "<table class='table table-hover text-center table-striped compact cell-border'>";
		echo "<thead>";
			echo "<tr>";
				echo "<td><b>ID</b></td>";
				echo "<td><b>Nama</b></td>";
				echo "<td><b>Modul</b></td>";
				echo "<td><b>Diubah oleh</b></td>";
				echo "<td><b>Tanggal ubah</b></td>";
			echo "</tr>";
		echo "</thead>";
	while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
	{
		echo "<tr>";
			echo "<td style:'border=1px solid black'>".$row['userid']."</td>";
			echo "<td style:'border=1px solid black>".$row['userlname']."</td>";
			echo "<td style:'border=1px solid black>".$row['usermodul']."</td>";
			echo "<td style:'border=1px solid black>".$row['chg_by']."</td>";
			echo "<td style:'border=1px solid black>".$row['chg_date']."</td>";
		echo "</tr>";
	}
	echo "</table>";
	
	echo "</div>";
?>
</body>
</html>