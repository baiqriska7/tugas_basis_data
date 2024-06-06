<?php
  // mengaktifkan session
  session_start();
  //memanggil file koneksi
  include "config/koneksi.php";
 
  //menangkap hasil kiriman dari form login
  $u = $_POST['uname'];
  $p = md5($_POST['psw']);
 
  //mencari dan menyeleksi data dengan username dan password yang di kirim
  $data = mysqli_query($koneksi,"SELECT * FROM login where username='$u' and password='
 $p'");
 $cek = mysqli_query($koneksi, "SELECT * FROM login where username='$u' and password='$p'");
 if($cek > 0)
 
  {
  echo "hello";
  $_SESSION['username'] = $u;
  $_SESSION['status'] = "login";
  header("location:admin/index.php");
  }else{
  //jika datanya tidak ditemukan maka tampilkan pesan gagal
  header("location:index.php?pesan=gagal");
  }
 
  ?>