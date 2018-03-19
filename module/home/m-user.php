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
	
	$userid = "";
	$longname = "";
	$password = "";
	$result1 = "";
	$idmodul = "";
	
	if (isset($_POST['submit']))
	{
		$con = mysqli_connect("localhost","root","","saptest");
		
		$userid = mysqli_real_escape_string($con,$_POST['new_iduser']);
		$longname = mysqli_real_escape_string($con,$_POST['new_userlname']);
		$password = mysqli_real_escape_string($con,$_POST['new_pwduser']);
		$idmodul = mysqli_real_escape_string($con,$_POST['idmodul']);
		
		$query = 'SELECT * FROM user WHERE userid="'.$userid.'"';
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = 'INSERT INTO user(userid, userlname, userpwd, usermodul) VALUES ("'.$userid.'","'.$longname.'","'.$password.'","'.$idmodul.'")';
			$result = mysqli_query($con,$query);
			header("location:m-user.php");
		}
		else
		{
			echo '<script language="javascript">';
			echo 'alert("User ID tersebut sudah ada!")';
			echo '</script>';
		}
	}
	
	/*if (isset($_POST['submitEdit']))
	{
		$username = $_POST[];
		$password = $_POST[];
	}*/
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

<title>Master Data: User</title>

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
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Master
				<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<?php echo $root; ?>module/home/m-user.php">User</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-modul.php">Modul</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-ba.php">Business Area</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-check.php">Checklist</a></li>
					<li><a href="<?php echo $root; ?>module/home/m-uat.php">User Acceptance Test</a></li>
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
		<h1>Master Data User 
			<?php
				if ($_SESSION['username']=="Admin")
				{
			?>
			<!--<a class="btn btn-danger pull-right"><span class="glyphicon glyphicon-remove"></span></a>-->
			<button type="button" class="btn btn-success pull-right" data-toggle="modal" data-target="#modaladduser"><span class="glyphicon glyphicon-plus"></span> <b>Tambah User</b></button>
			
			<!-- Modal Add User -->
			<div id="modaladduser" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Tambah User Baru</h4>
					  </div>
					  
						<div class="modal-body"><h5>
							<form action="" method="POST" name="form_adduser">
								<label for="new_iduser">User ID (digunakan untuk username login):</label>
								<input type="text" id="new_iduser" name="new_iduser" class="form-control" placeholder="User ID" required="" autofocus=""><br>
								<label for="new_userlname">Nama lengkap user:</label>
								<input type="text" id="new_userlname" name="new_userlname" class="form-control" placeholder="Nama Lengkap User" required=""><br>
								<label for="new_pwduser">Password (digunakan untuk password login):</label>
								<input type="password" id="new_pwduser" name="new_pwduser" class="form-control" placeholder="Password" required=""><br>
								<label for="new_repeatpwd">Ulangi password:</label>
								<input type="password" id="new_repeatpwd" name="new_repeatpwd" class="form-control" placeholder="Ulangi Password" required=""><br>
								<label for="new_repeatpwd">Modul user:</label>
								<?php
									$con = mysqli_connect("localhost","root","","saptest");

									$sql = "SELECT idmodul FROM m_modul";
									$result = mysqli_query($con,$sql);

									echo "<select name='idmodul'>";
									while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
										echo "<option value='" . $row['idmodul'] . "'>" . $row['idmodul'] . "</option>";
									}
									echo "</select>";
								?>
								<br><br>
								<div class="modal-footer">
									<button class="btn btn-default btn-success" type="submit" name="submit" id="submit" method="POST" action="m-user.php">Tambah</button>
									<button type="button" class="btn btn-default btn-danger" data-dismiss="modal">Batal</button>
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
	</div><br>
	
	<div class="container container-fluid">
		<table class="table table-hover text-center">
			<thead>
				<tr>
					<td><b>ID Login</b></td>
					<td><b>Nama User</b></td>
					<td><b>Modul User</b></td>
				</tr>
			</thead>
			<tbody>
			<?php
				$con = mysqli_connect("localhost","root","","saptest");

				$query = "SELECT userid,userlname,usermodul FROM user";
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style:'border=1px solid black'>".$row['userid']."</td>";
						echo "<td style:'border=1px solid black'>".$row['userlname']."</td>";
						echo "<td style:'border=1px solid black'>".$row['usermodul']."</td>";
						if ($_SESSION['username']=="Admin")
						{
			?>
							<td><a type='button' class='btn btn-info btn-xs' data-toggle='modal' data-target='#modalEditUser' href='delete.php?id='".$row['id']."'><span class='glyphicon glyphicon-pencil'></span></a>&nbsp
							<!--<a type='button' class='btn btn-danger btn-xs' data-toggle='modal' href='#modalDelUser'".$row['userid']."'><span class='glyphicon glyphicon-trash'></span></a></td>-->

							<a type='button' class='btn btn-danger btn-xs' data-toggle='modal' href='#modalDelUser'".$row['id']."'><span class='glyphicon glyphicon-trash'></span></a></td>

							<div id="modalDelUser"<?php $row['userid']; ?>" class="modal fade" role="dialog">
							<div class="modal-dialog">
								<!-- Modal content-->
								<div class="modal-content">
								  <div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Edit User</h4>
								  </div>
								  
									<div class="modal-body"><h5>
										<form action="" method="POST" name="formDelUser">
									<label>Anda yakin akan menghapus user dengan ID:</label>
									<?php
										$userid=$row['userid'];
										echo $_GET['userid'];
										//echo $userid;
										//visit https://stackoverflow.com/questions/26107666/delete-a-specific-row-of-a-table-using-php
									?>
									<br><br>
									<div class="modal-footer">
										<button class="btn btn-default btn-success" type="submit" name="submitEdit" id="submitEdit" method="POST" action="m-user.php">Hapus</button>
										<button type="button" class="btn btn-default btn-danger" data-dismiss="modal">Batal</button>
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
				
				//$con->close();
			?>
			
				<div id="modalEditUser" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<!-- Modal content-->
						<div class="modal-content">
						  <div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Edit User</h4>
						  </div>
						  
							<div class="modal-body"><h5>
								<form action="" method="POST" name="formEditUser">
									<label for="new_userlname">Edit nama:</label>
									<input type="text" id="edit_userlname" name="new_userlname" class="form-control" placeholder="Nama Lengkap" required=""><br>
									<label for="new_pwduser">Edit password:</label>
									<input type="password" id="edit_pwduser" name="new_pwduser" class="form-control" placeholder="Password" required=""><br>
									<label for="new_repeatpwd">Edit modul:</label>
									<?php
										$con = mysqli_connect("localhost","root","","saptest");

										$query = "SELECT idmodul FROM m_modul";
										$result = mysqli_query($con,$query);

										echo "<select name='idmodul'>";
										while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
										{
											echo "<option value='" . $row['idmodul'] . "'>" . $row['idmodul'] . "</option>";
										}
										echo "</select>";
										
										//$con->close();
									?>
									<br><br>
									<div class="modal-footer">
										<button class="btn btn-default btn-success" type="submit" name="submitEdit" id="submitEdit" method="POST" action="m-user.php">Simpan</button>
										<button type="button" class="btn btn-default btn-danger" data-dismiss="modal">Batal</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				
				
				
			</tbody>
		</table>
	</div>
</body>