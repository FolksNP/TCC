<!DOCTYPE html>
<html lang ="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="../styles/css/main.css">
  <meta name="viewport" content="width-device-width, initial-scale=1.0">

  <title>Multi Step Form</title>
</head>
<body>
  <?php 
    session_start();
    include('header.php');
    ?>
  <!-- Trigger/Open The Modal -->
  <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Dropdown</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</div>
<?php include('footer.php') ?>
<script src="../scripts/cadCurso.js"></script>
</body>
</html>