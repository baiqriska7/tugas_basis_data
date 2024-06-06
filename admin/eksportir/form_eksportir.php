<?php
require_once("../../config/koneksi.php");
if(isset($_POST["tambah_data_exportir"])){
    $namaEksportir = $_POST["nama_exportir"];
    $query = "insert into eksportir (nama_eksportir) values ('$namaEksportir')";
    mysqli_query($koneksi,$query);
    if(mysqli_affected_rows > 0){
        header("location:data_eksportir.php");
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>tambah data</title>
</head>
<body>
    <h1>Tambah Data</h1>
    <form method="post">
        <div>
            <label>Nama Exportir</label>
            <input type="text" name="nama_exportir">
        </div>
        <div>
            <button type="submit" name="tambah_data_exportir">tambah</button>
        </div>
    </form>
</body>
</html>