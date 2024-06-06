<!DOCTYPE html>
 <html>
 <head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="assets/app.css">
 <link rel="stylesheet" href="assets/login.css">
 </head>
 <body>

 <div class="topnav">
 <a class="active" href="index.php">Home</a>
 <a href="eksportir.php">Ekportir</a>
 <a href="komoditi.php">Komoditi</a>
 <a onclick="document.getElementById('id01').style.display='block'" style="
width:auto;">Login</a>
 </div>

 <div style="padding-left:16px">
 <h2>Dashboard App</h2>
 <p>Aplikasi Eksportir</p>
 <table id="customers">
 <tr>
 <th>No</th> <th>Tahun</th>
 <th>Komoditi</th>
 <th>Negara Tujuan</th>
 <th>Ekportir</th>
 <th>Importir</th>
 </tr>
 </table>
 </div>
 </body>
 </html>

 <div id="id01" class="modal">

 <form class="modal-content animate" action="login.php" method="post">
 <div class="imgcontainer">
 <span onclick="document.getElementById('id01').style.display='none'" class="
close" title="Close Modal">&times;</span>
 <h4>Isikan Username dan Password</h4>
 </div>

 <div class="container">
 <label for="uname"><b>Username</b></label>
 <input type="text" placeholder="Enter Username" name="uname" required>

 <label for="psw"><b>Password</b></label>
 <input type="password" placeholder="Enter Password" name="psw" required>

 <button type="submit">Login</button>
 </div>

 <div class="container" style="background-color:#f1f1f1">
 <button type="button" onclick="document.getElementById('id01').style.display='
none'" class="cancelbtn">Cancel</button>
 </div>
 </form>
 </div>

 <script>
 // Get the modal
 var modal = document.getElementById('id01');

 // When the user clicks anywhere outside of the modal, close it
 window.onclick = function(event) {
 if (event.target == modal) {
 modal.style.display = "none";
 }
 }
 </script>
