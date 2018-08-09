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
	
	if (isset($_POST['editUser']))
	{	
		$editlname = mysqli_real_escape_string($con,$_POST['edit_userlname']);
		$editmodul = mysqli_real_escape_string($con,$_POST['edit_usermodul']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$id = mysqli_real_escape_string($con,$_POST['userid']);
		
		if(!mysqli_query($con,"UPDATE user SET userlname='$editlname',usermodul='$editmodul',chg_by='$username',chg_date=now() WHERE userid='$id'"))
		{
			echo mysqli_error($con);
		}
	}
	
	if (isset($_POST['editPwd']))
	{	
		$oldPwd = mysqli_real_escape_string($con,md5($_POST['edit_oldpwd']));
		$newPwd = mysqli_real_escape_string($con,md5($_POST['edit_newpwd']));
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$id = mysqli_real_escape_string($con,$_POST['userid']);
		
		$query = "SELECT * FROM user WHERE userid = '$id' AND userpwd = '$oldPwd'";
		$result = mysqli_query($con,$query);
		$num_rows = mysqli_num_rows($result);
		
		if($num_rows == 0)
		{
			echo '<script language="javascript">';
			echo 'alert("Gagal mengganti password/password lama tidak sesuai.")';
			echo '</script>';
		}
		else
		{
			$query = "UPDATE user SET userpwd='$newPwd',chg_by='$username',chg_date=now() WHERE userid='$id' AND userpwd='$oldPwd'";
			mysqli_query($con,$query);
			header("location:user.php");
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

<title>Pengaturan</title>

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
			<li class=""><a href="<?php echo $root; ?>module/home/home.php">Beranda</a></li>
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
			<li><a href="<?php echo $root; ?>module/home/uat.php">U A T</a></li>
			<li class="dropdown active">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#"><b><span class="glyphicon glyphicon-user" aria-hidden="true"></span>
				<?php echo $_SESSION["longname"]; ?></b>
				<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<?php echo $root; ?>module/home/user.php">Pengaturan</a></li>
					<li><a href="../../connection/con-logout.php"><b>Logout</b></a></li>
				</ul>
			</li>
		</ul>
		
	  </div>
	</nav>
	
	<?php
		$session = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$query = 'SELECT * FROM user WHERE userid="'.$session.'"';
		$result = mysqli_query($con,$query);
		$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
		
		if($result->num_rows == 0)
		{
			$query = '';
			$result1 = mysqli_query($con,$query);
			header("location:user.php");
		}
		else {}
	?>
	
	<div class="container container-fluid">
		<h1><span class="glyphicon glyphicon-user"></span> Dasbor User</h1><br />
		<p><span class="glyphicon glyphicon-chevron-right"></span> <label for="username">ID user: <?php echo $_SESSION['username']; ?></label><br /></p>
		<p><span class="glyphicon glyphicon-chevron-right"></span> <label for="username">Nama user: <?php echo $row['userlname']; ?></label><br /></p>
		<p><span class="glyphicon glyphicon-chevron-right"></span> <label for="usermodul">Modul user: <?php echo $_SESSION['modul']; ?></label><br /></p>
		
		<!-- Button Edit User -->
		<td><a type='button' class='btn btn-info btn-md' data-toggle='modal' href="#modalEditUser<?php echo $_SESSION['username']; ?>"><span class='glyphicon glyphicon-pencil'></span> <b>Edit user</b></a> 
						
		<!-- Modal Edit User -->
		<div id="modalEditUser<?php echo $_SESSION['username']; ?>" class="modal fade" role="dialog">
			<div class="modal-dialog">
				
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Edit User</h4>
					</div>
									  
					<div class="modal-body"><h5>
						<form action="" method="POST" name="formEditUser">
							<input type='hidden' name='userid' value='<?php echo $row['userid']; ?>' />
							<label for="edit_userlname">Edit nama:</label>
							<input type="text" id="edit_userlname" name="edit_userlname" class="form-control" value="<?php echo $row['userlname']; ?>" required=""><br>
							<label for="edit_usermodul">Edit modul:</label><br>
							<?php
								$query = "SELECT idmodul FROM m_modul WHERE idmodul='$_SESSION[modul]'";
								$result1 = mysqli_query($con,$query);

								echo "<select name='edit_usermodul' class='selectpicker' title='Pilih Modul' data-width='auto'>";
								while ($row1 = mysqli_fetch_array($result1,MYSQLI_ASSOC))
								{
									if ($row['usermodul'] == $row1['idmodul'])
									{
										echo "<option value='$row1[idmodul]' selected >$row1[idmodul]</option>";
									} else {
										echo "<option value='$row1[idmodul]'>$row1[idmodul]</option>";
									}
								}
								echo "</select>";
							?><br><br><span class="glyphicon glyphicon-check"></span> <label>Perubahan ke modul lain silahkan menghubungi Administrator.</label>
							<br><br>
							
							<div class="modal-footer">
								<button class="btn btn-default btn-success" type="submit" name="editUser" id="editUser" action="user.php?id=<?php echo $row['userid']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
								<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Button Edit Password -->
		<td><a type='button' class='btn btn-info btn-md' data-toggle='modal' href="#modalEditPwd<?php echo $_SESSION['username']; ?>"><span class='glyphicon glyphicon-pencil'></span> <b>Edit password</b></a> 
						
		<!-- Modal Edit Password -->
		<div id="modalEditPwd<?php echo $_SESSION['username']; ?>" class="modal fade" role="dialog">
			<div class="modal-dialog">
				
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Edit User</h4>
					</div>
									  
					<div class="modal-body"><h5>
						<form action="" method="POST" name="formEditUser">
							<input type='hidden' name='userid' value='<?php echo $row['userid']; ?>' />
							<label for="edit_oldpwd">Password lama:</label>
							<input type="password" id="edit_oldpwd" name="edit_oldpwd" class="form-control" placeholder="Masukkan password lama" required=""><br>
							<label for="edit_newpwd">Password baru:</label>
							<input type="password" id="edit_newpwd" name="edit_newpwd" class="form-control" placeholder="Masukkan password baru" required=""><br>
							<br>
							
							<div class="modal-footer">
								<button class="btn btn-default btn-success" type="submit" name="editPwd" id="editPwd" action="m-user.php?id=<?php echo $row['userid']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
								<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<?php //if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS") {
				if ($_SESSION['modul']=="SUPER") {?>
			<hr />
				<h1><span class="glyphicon glyphicon-home"></span> Dasbor Beranda</h1><br />
				<span class="glyphicon glyphicon-wrench"></span> <label>Future plans: Ganti visi misi dan tambahkan 5P</label>
				<span class="glyphicon glyphicon-wrench"></span> <label>Under construction...</label>
		<?php } else {}?>
	</div>
</body>