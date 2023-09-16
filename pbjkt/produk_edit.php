<?php session_start(); 
if(!isset($_SESSION['valid'])) {
	header('Location: login.php');
}
 
include_once("connection.php");

if(isset($_POST['update']))
{	
	$idprinter = $_POST['idprinter'];
	$namaprinter = $_POST['namaprinter'];
	$spesifikasi = $_POST['spesifikasi'];
	$harga = $_POST['harga'];	
		
		$result = mysqli_query($mysqli, "UPDATE tb_printer SET namaprinter='$namaprinter', 
																spesifikasi='$spesifikasi',
																harga='$harga' WHERE idprinter=$idprinter");   
		echo "<script language=javascript>
				alert('Simpan Berhasil');
				window.location='produk.php';
			  </script>";
}
?>
<?php
$idprinter = $_GET['idprinter'];

$result_data = mysqli_query($mysqli, "SELECT * FROM tb_printer WHERE idprinter=$idprinter");

while($res = mysqli_fetch_array($result_data))
{
	$namaprinter = $res['namaprinter'];
	$spesifikasi = $res['spesifikasi'];
	$harga = $res['harga'];
}
?>
<html>
<head>	
	<title>Edit Data</title>
</head>

<body>
	<a href="index.php">Home</a> | <a href='produk.php'>Produk</a> | <a href="logout.php">Logout</a>
	<br/><br/>
	
	<form name="form1" method="post" action="produk_edit.php">
	<input type="hidden" name="idprinter" required value="<?php echo $_GET['idprinter'];?>">
		<table border="0">
		
			<tr> 
				<td>Nama Printer</td>
				<td><input type="text" name="namaprinter"value="<?= $namaprinter; ?>"></td>
			</tr>
			
			<tr> 
				<td>Spesifikasi</td>
				<td><input type="text" name="spesifikasi" value="<?= $spesifikasi; ?>"></td>
			</tr>
			<tr> 
				<td>Harga</td>
				<td><input type="text" name="harga" value="<?= $harga; ?>"></td>
			</tr>
			<tr> 
				<td></td>
				<td><br><input type="submit" name="update" value="Update"></td>
			</tr>
		</table>
	</form>
</body>
</html>
