<?php session_start(); ?>
<html>
<head>
	<title>Photobooth Jakarta Murah</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>

<body>
<?php
include("connection.php");

if(isset($_POST['submit'])) {
	$user = mysqli_real_escape_string($mysqli, $_POST['username']);
	$pass = mysqli_real_escape_string($mysqli, $_POST['password']);

	if($user == "" || $pass == "") {
		echo "Username / Password Kosong";
		echo "<br/>";
		echo "<a href='login.php'>Kembali</a>";
	} else {
		$result = mysqli_query($mysqli, "SELECT * FROM tab_user WHERE username='$user' 
											AND password='$pass' ")
					or die("Instruksi tidak ditemukan");
		
		$row = mysqli_fetch_assoc($result);
		
		if(is_array($row) && !empty($row)) {
			$validuser = $row['username'];
			$_SESSION['valid'] = $validuser;
			$_SESSION['username'] = $row['username'];
			$_SESSION['iduser'] = $row['iduser'];
		} else {
			echo "<script language=javascript>
				alert('Username atau Password salah');
				window.location='login.php';
			  </script>";
		}

		if(isset($_SESSION['valid'])) {
			header('Location: produk.php');			
		}
	}
} else {
?>
	<p align="center"><font size="+2">Selamat datang Rekap Jadwal</font></p>
	<div class="d-flex justify-content-center">
	<form name="form1" method="post" action="">
		<table width="75%" border="0">
			<tr> 
				<td width="10%">Username</td>
				<div class="form-outline mb-4">
				<td><input type="text" name="username"></td>
			</tr>
			<tr> 
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr> 
				<td>&nbsp;</td>
				<td><input type="submit" name="submit" value="Submit"></td>
			</tr>
		</table>
		</div>
	</form>
<?php
}
?>
</body>
</html>
