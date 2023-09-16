<?php session_start(); 
if(!isset($_SESSION['valid'])) {
	header('Location: login.php');
}
include_once("connection.php");
?>

<html>
<head>
	<title>Homepage</title>
	<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="header">
		SELAMAT DATANG DI REKAP JADWAL RIFQI
	</div>
	<?php
	if(isset($_SESSION['valid'])) {			
		include("connection.php");					
		$result = mysqli_query($mysqli, "SELECT * FROM tab_user");
	?>
				
		Welcome <?php echo $_SESSION['username'] ?> ! <a href='logout.php'>Logout</a><br/>
		<br/>
		<?php if($_SESSION['username'] == "admin"){ ?>
		<a href='produk.php'>LANGSUNG KLIK DISINI BUAT REKAP JADWAL</a> 
		<?php }else{ } ?>
		<br/><br/>
	

		<?php if($_SESSION['username'] == "admin"){ ?>
		
<?php
include_once("connection.php");
$result = mysqli_query($mysqli, "SELECT a.*,b.namaprinter,b.harga 
								FROM tb_transaksi a 
								left join tb_printer b 
								on a.idprinter = b.idprinter ");
?>

		<?php } ?>


	<?php	
	} else {
		echo "Untuk Login Silahkan Klik Tombol Login Dibawah Ini<br/><br/>";
		echo "<a href='login.php'>Login</a> ";
	}
	?>
	<div id="footer">
		Created by <a href="" title="STUDIOC81">PHOTOBOOTH JAKARTA MURAH</a>
	</div>
</body>
</html>
