<?php
	mysql_connect('localhost', 'root', '');
	mysql_select_db('saptest');
	
	$sql = "SELECT uat_scn FROM m_uat_scn WHERE uat_modul='".$_POST[]."'";
	$result = mysql_query($sql);

	while ($row = mysql_fetch_array($result))
	{
		echo "<option value='".$row['uat_scn']."'>".$row['uat_modul']."</option>";
	}
?>