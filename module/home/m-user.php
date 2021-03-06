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
	
	$userid = "";
	$longname = "";
	$password = "";
	$result1 = "";
	$idmodul = "";
	
	if (isset($_POST['submit']))
	{
		$userid = mysqli_real_escape_string($con,$_POST['new_iduser']);
		$longname = mysqli_real_escape_string($con,$_POST['new_userlname']);
		$password = mysqli_real_escape_string($con,md5($_POST['new_pwduser']));
		$idmodul = mysqli_real_escape_string($con,$_POST['idmodul']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$query = 'SELECT * FROM user WHERE userid="'.$userid.'"';
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			$query = 'INSERT INTO user(userid, userlname, userpwd, usermodul,chg_by,chg_date) VALUES ("'.$userid.'","'.$longname.'","'.$password.'","'.$idmodul.'","'.$username.'",now())';
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
	
	if (isset($_GET['del']))
	{
		$id = $_GET['id'];
		
		mysqli_query($con,"DELETE FROM user WHERE userid='".$id."'");
		header("Location:m-user.php");
	}
	
	if (isset($_POST['editUser']))
	{	
		$editlname = mysqli_real_escape_string($con,$_POST['edit_userlname']);
		$editmodul = mysqli_real_escape_string($con,$_POST['edit_idmodul']);
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$id = mysqli_real_escape_string($con,$_POST['userid']);
		
		if(!mysqli_query($con,"UPDATE user SET userlname='$editlname',usermodul='$editmodul',chg_by='$username',chg_date=now() WHERE userid='$id'"))
		{
			echo mysqli_error($con);
		}
	}
	
	if (isset($_POST['resetPsw']))
	{
		$id = mysqli_real_escape_string($con,$_POST['userid']);
		$pswDefault = mysqli_real_escape_string($con,md5('1234'));
		$username = mysqli_real_escape_string($con,$_SESSION['username']);
		
		$query = 'SELECT * FROM user WHERE userid="'.$id.'"';
		$result = mysqli_query($con,$query);
		
		if($result->num_rows == 0)
		{
			echo '<script language="javascript">';
			echo 'alert("Tidak bisa mereset password!")';
			echo '</script>';
		}
		else
		{
			$query = "UPDATE user SET userpwd='$pswDefault',chg_by='$username',chg_date=now() WHERE userid='$id'";
			$result = mysqli_query($con,$query);
			header("location:m-user.php");
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

<title>Master: User</title>

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
					<li><a href="../../connection/con-logout.php"><b>Logout</b></a></li>
				</ul>
			</li>
		</ul>
		
	  </div>
	</nav>

	<div class="container-fluid">
		<h1>Master User 
			<?php
				//if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
				if ($_SESSION['modul']=="SUPER")
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
								<label for="new_idmodul">Modul user:</label><br>
								<?php
									$sql = "SELECT idmodul FROM m_modul";
									$result = mysqli_query($con,$sql);

									echo "<select name='idmodul' class='selectpicker show-tick' title='Pilih Modul' data-width='auto'>";
									while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)) {
										echo "<option value='$row[idmodul]'>$row[idmodul]</option>";
									}
									echo "</select>";
								?>
								<br><br>
								<div class="modal-footer">
									<button class="btn btn-default btn-success" type="submit" name="submit" id="submit" method="POST" action="m-user.php"><span class="glyphicon glyphicon-plus"></span> Tambah</button>
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
	
	<div class="container-fluid">
		<table id="tableUser" class="table table-hover text-left table-striped compact cell-border">
			<thead>
				<tr>
					<th style="vertical-align:middle;" class="text-center"><b>ID Login</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Nama User</b></th>
					<th style="vertical-align:middle;" class="text-center"><b>Modul User</b></th>
					<?php //if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS") {
					if ($_SESSION['modul']=="SUPER") { ?>
					<th class="col-md-1"></th>
					<?php } else {} ?>
				</tr>
			</thead>
			<tbody data-link="row">
			<?php
				$query = "SELECT * FROM user";
				$result = mysqli_query($con,$query);

				while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
				{
					echo "<tr>";
						echo "<td style='vertical-align:middle;'>".$row['userid']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['userlname']."</td>";
						echo "<td style='vertical-align:middle;'>".$row['usermodul']."</td>";
						
						//if ($_SESSION['modul']=="ABAP" || $_SESSION['modul']=="BASIS")
						if ($_SESSION['modul']=="SUPER")
						{
			?>
							<!-- Button Edit User -->
							<td style="vertical-align:middle;" class="text-center"><a type='button' class='btn btn-info btn-xs' data-toggle='modal' href="#modalEditUser<?php echo $row['userid']; ?>"><span class='glyphicon glyphicon-pencil'></span></a> 
							
							<!-- Modal Edit User -->
							<div id="modalEditUser<?php echo $row['userid']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Edit User</h4>
										</div>
									  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formEditUser" class="text-left">
												<input type='hidden' name='userid' value='<?php echo $row['userid']; ?>' />
												<label for="edit_userlname">Edit nama:</label>
												<input type="text" id="edit_userlname" name="edit_userlname" class="form-control" value="<?php echo $row['userlname']; ?>" required=""><br>
												<label for="edit_usermodul">Edit modul:</label><br>
												<?php
													$query = "SELECT idmodul FROM m_modul";
													$result1 = mysqli_query($con,$query);

													echo "<select name='edit_idmodul' class='selectpicker show-tick' title='Pilih Modul' data-width='auto'>";
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
												?><br><br>
												Terakhir diubah oleh <label><?php echo $row['chg_by']; ?></label>
												<?php
													$origDate = $row['chg_date'];
													$newDate = date("d-M-Y H:i:s", strtotime($origDate));
												?>
												tanggal <label><?php echo $newDate; ?></label>.
												<br><br>
												<div class="modal-footer">
													<button class="btn btn-default btn-success" type="submit" name="editUser" id="editUser" action="m-user.php?id=<?php echo $row['userid']; ?>"><span class="glyphicon glyphicon-floppy-disk"></span> Simpan</button>
													<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<!-- Button Reset Password -->
							<a type='button' class='btn btn-warning btn-xs' data-toggle='modal' href="#modalResetPsw<?php echo $row['userid']; ?>"><span class='glyphicon glyphicon-repeat'></span></a>

							<!-- Modal Reset Password -->
							<div id="modalResetPsw<?php echo $row['userid']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Reset Password User</h4>
										</div>
										  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formResetPsw" class="text-left">
												<input type='hidden' name='userid' value='<?php echo $row['userid']; ?>' />
												<label>Anda yakin akan mereset password user </label>
												<label type="text" id="userToReset" name="userToReset"><?php echo $row['userid']; ?>?</label>
												<br><br>
												<div class="modal-footer">
													<button class="btn btn-default btn-success" type="submit" name="resetPsw" id="resetPsw" action="m-user.php?id=<?php echo $row['userid']; ?>"><span class="glyphicon glyphicon-repeat"></span> Reset</button>
													<button type="button" class="btn btn-default btn-danger" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Batal</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
							
							<!-- Button Delete User -->
							<a type='button' class='btn btn-danger btn-xs' data-toggle='modal' href="#modalDelUser<?php echo $row['userid']; ?>"><span class='glyphicon glyphicon-trash'></span></a></td>

							<!-- Modal Delete User -->
							<div id="modalDelUser<?php echo $row['userid']; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Hapus User</h4>
										</div>
										  
										<div class="modal-body"><h5>
											<form action="" method="POST" name="formDelUser">
												<label>Anda yakin akan menghapus user ID</label>
												<label type="text" id="userToDel" name="userToDel"><?php echo $row['userid']; ?>?</label>
												<br><br>
												<div class="modal-footer">
													<a class="btn btn-default btn-success" type="submit" name="delUser" id="delUser" method="POST" href="m-user.php?del=x&id=<?php echo $row['userid']; ?>"><span class="glyphicon glyphicon-trash"></span> Hapus</a>
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
			?>
				
			</tbody>
		</table><br /><br />
	</div>
</body>

<script>
	$(document).ready( function () {
    $('#tableUser').DataTable( {
		stateSave: true,
		stateDuration: -1,
		"lengthMenu": [[20, 40, 60, 80, -1], [20, 40, 60, 80, "All"]],
		dom: 'Blfrtip',
		buttons: [
            {
                extend: 'copyHtml5',
                exportOptions: {
                    columns: [ 0, 1, 2 ]
                }
            },
            {
                extend: 'excelHtml5',
                exportOptions: {
                    columns: [ 0, 1, 2 ]
                }
            },
            {
                extend: 'print',
                exportOptions: {
                    columns: [ 0, 1, 2 ]
                }
            }
		]
		} );
	} );
</script>