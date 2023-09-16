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
$idprinter = $_GET['idprinter'];

//deleting the row from table
$result=mysqli_query($mysqli, 
"DELETE FROM tb_printer WHERE idprinter='$idprinter' ");
echo "<script language=javascript>
				alert('Hapus Berhasil');
				window.location='produk.php';
			  </script>";
?>

