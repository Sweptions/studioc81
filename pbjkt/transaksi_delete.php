<?php session_start(); ?>

<?php
if(!isset($_SESSION['valid'])) {
	header('Location: login.php');
}
?>

<?php
//including the database connection file
include("connection.php");

//getting id of the data from url
$idtransaksi = $_GET['idtransaksi'];

//deleting the row from table
$result=mysqli_query($mysqli, 
"DELETE FROM tb_transaksi WHERE idtransaksi='$idtransaksi' ");
echo "<script language=javascript>
				alert('Hapus Berhasil');
				window.location='index.php';
			  </script>";
?>

