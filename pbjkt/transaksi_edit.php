<?php session_start(); 
if(!isset($_SESSION['valid'])) {
	header('Location: login.php');
}
 
include_once("connection.php");

if(isset($_POST['update']))
{	
	$idtransaksi = $_POST['idtransaksi'];
	$idprinter = $_POST['idprinter'];
	$jumlah = $_POST['jumlah'];
		
		$result = mysqli_query($mysqli, "UPDATE tb_transaksi SET idprinter='$idprinter', 
																jumlah='$jumlah',
																WHERE idtransaksi=$idtransaksi");   
		echo "<script language=javascript>
				alert('Simpan Berhasil');
				window.location='index.php';
			  </script>";
}
?>
<?php
$idtransaksi = $_GET['idtransaksi'];

$result_data = mysqli_query($mysqli, "SELECT a.*, b.idprinter, b.namaprinter
									  FROM tb_transaksi a
									  LEFT JOIN tb_printer b
									  ON a.idprinter = b.idprinter
									  WHERE a.idtransaksi = $idtransaksi");

while($res = mysqli_fetch_array($result_data))
{
	$idprinter = $res['idprinter'];
	$namaprinter = $res['namaprinter'];
	$jumlah = $res['jumlah'];
}
?>
<html>
<head>	
	<title>Edit Data</title>
</head>

<body>
	<a href="index.php">Home</a> | <a href='produk.php'>Produk</a> | <a href="logout.php">Logout</a>
	<br/><br/>
	
	<form name="form1" method="post" action="">
	<input type="hidden" name="idtransaksi" required value="<?php echo $_GET['idtransaksi'];?>">
		<table border="0">
		
			<tr> 
				<td>Nama Printer</td>
				<td>
					<select name="idprinter">
						<option value="<?= $idprinter; ?>">
							<?= $namaprinter; ?>
						</option>
					</select>
				</td>
			</tr>
			
			<tr> 
				<td>Jumlah Unit</td>
				<td><input type="number" name="jumlah" required value="<?= $jumlah; ?>"></td>
			</tr>
			<tr> 
				<td></td>
				<td><br><input type="submit" name="update" value="Update"></td>
			</tr>
		</table>
	</form>
</body>
</html>
