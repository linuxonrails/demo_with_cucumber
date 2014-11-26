<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
  <?php
    $title = 'Log in';
    $description = 'User access';
  ?>

  <head>
    <?php require("_head.php"); ?>
  </head>
  <body>
    <?php require("_header.php"); ?>

    <div class="container bs-docs-container">
      <div class="row">
        <div class="col-sm-8 col-sm-offset-2 col-lg-6 col-lg-offset-3">
          <form role="form" action="/index.php" method="post">
            <div class="form-group">
              <label for="username">Username or Email address</label>
              <input type="username" class="form-control" id="username" name="username" placeholder="Enter your user name or email">
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Password">
            </div>
            <div class="form-group">
              <p class="help-block">
                <a href="/new-password.php">
                  Forgot your username and password? click here!
                </a>
              </p>
            </div>
            <button type="submit" class="btn btn-default">Sign in</button>
          </form>
        </div>
      </div>
    </div>

    <?php include('_footer.php') ?>
  </body>
</html>
