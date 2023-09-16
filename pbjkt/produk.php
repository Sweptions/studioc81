<?php session_start(); ?>

<?php
if(!isset($_SESSION['valid'])) {
	header('Location: login.php');
}
?>

<?php
include_once("connection.php");
$result = mysqli_query($mysqli, "SELECT * FROM tb_printer");
?>

<html>
<head>
	<title>Produk</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="produk_add.php">Tambah <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.php">logout</a>
      </li>
    </ul>
    </form>
  </div>
</nav>
</head>

<body>
	<h1 align="center"> Tanggal Order </h1>
	<table align="center" width='1300px' border=1>
		<tr align="center" bgcolor='#CCCCCC'>
			<td align="center">Nama Data Order</td>
			<td align="center">No Pic</td>
			<td align="center">Link Gdrive</td>
			<td align="center">Option</td>
		</tr>
		<?php
		while($res = mysqli_fetch_array($result)) {		
			echo "<tr>";
			echo "<td>".$res['namaprinter']."</td>";
			echo "<td>".$res['spesifikasi']."</td>";
			echo "<td>".$res['harga']."</td>";	
			echo "<td><a href=\"produk_edit.php?idprinter=$res[idprinter]\">Edit
			</a> | <a href=\"produk_delete.php?idprinter=$res[idprinter]\" 
			onClick=\"return confirm('Anda Yakin?')\">Delete</a></td>";		
		}
		?>
	</table>	
</body>
</html>
