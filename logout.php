<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
  <?php
    $_SESSION['logged_in'] = false;

    $title = 'Goodbye!';
    $description = 'The session has been successfully closed';
  ?>

  <head>
    <?php require("_head.php"); ?>
  </head>
  <body>
    <?php require("_header.php"); ?>

    <div class="container bs-docs-container">
      <p class="lead">See you soon!</p>
    </div>

    <?php include('_footer.php') ?>
  </body>
</html>
