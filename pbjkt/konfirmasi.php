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

$iduser = $_SESSION['iduser'];
$idtransaksi = $_GET['idtransaksi'];

//deleting the row from table
$result=mysqli_query($mysqli, 
"UPDATE tb_transaksi SET userid2='$iduser' WHERE idtransaksi=$idtransaksi");
echo "<script language=javascript>
				alert('Konfirmasi Berhasil');
				window.location='index.php';
			  </script>";
?>

