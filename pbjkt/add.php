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
	$idprinter = $_POST['idprinter'];
	$jumlah = $_POST['jumlah'];
	$userid = $_SESSION['iduser'];	
		
		$result = mysqli_query($mysqli, 
		"INSERT INTO tb_transaksi (idprinter, jumlah, userid,userid2,printer_tbl,
		transaksi_tbl) 
		VALUES('$idprinter', '$jumlah', '$userid','0','0','0')");   
		echo "<script language=javascript>
				alert('Simpan Berhasil');
				window.location='index.php';
			  </script>";
	
}
?>


<a href="index.php">Home</a>  | 
	<a href="logout.php">Logout</a>	<br/><br/>

	<form action="add.php" method="post" name="form1">
		<table width="25%" border="0">
			<tr> 
				<td>Lunas/DP</td>
				<td><select name="idprinter">
				<?php $result = mysqli_query($mysqli, "SELECT * FROM tb_printer");
				while($res = mysqli_fetch_array($result)) {		
					echo '<option value="'.$res['idprinter'].'">'
					.$res['namaprinter'].'</option>';
				}
				?>
				</select></td>
			</tr>
			<tr> 
				<td>Jumlah</td>
				<td><input type="text" name="jumlah" required></td>
			</tr>
			<tr> 
				<td></td>
				<td><br><input type="submit" name="Submit" value="Simpan"></td>
			</tr>
		</table>
	</form>
</body>
</html>
