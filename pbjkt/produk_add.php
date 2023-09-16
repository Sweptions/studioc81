<?php session_start(); ?>

<?php
if(!isset($_SESSION['valid'])) {
	header('Location: login.php');
}
?>

<html>
<head>
	<title>Add Data</title>
</head>

<body>
<?php
//including the database connection file
include_once("connection.php");

if(isset($_POST['Submit'])) {	
	$namaprinter = $_POST['namaprinter'];
	$spesifikasi = $_POST['spesifikasi'];
	$harga = $_POST['harga'];	
		
		$result = mysqli_query($mysqli, 
		"INSERT INTO tb_printer (namaprinter, spesifikasi, harga) 
		VALUES('$namaprinter', '$spesifikasi', '$harga')");   
		echo "<script language=javascript>
				alert('Simpan Berhasil');
				window.location='produk.php';
			  </script>";
	
}
?>


<a href="index.php">Home</a> | <a href='produk.php'>Produk</a> | 
	<a href="logout.php">Logout</a>	<br/><br/>

	<form action="produk_add.php" method="post" name="form1">
		<table width="1200px" border="10">
			<tr> 
				<td>Nama Pemesan</td>
				<td><input type="text" name="namaprinter"></td>
			</tr>
			<tr> 
				<td>Jam</td>
				<td><input type="text" name="spesifikasi"></td>
			</tr>
			<tr> 
				<td>alamat</td>
				<td><input type="url" name="harga"></td>
			</tr>
			<tr> 
				<td></td>
				<td><br><input type="submit" name="Submit" value="Simpan"></td>
			</tr>
		</table>
	</form>
</body>
</html>
