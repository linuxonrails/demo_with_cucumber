<header class="navbar navbar-static-top bs-docs-nav" id="top" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="/" class="navbar-brand">Home</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
        <li>
          <a href="/">Time machine</a>
        </li>
        <li>
          <a href="/">Hill Valley</a>
        </li>
        <li>
          <a href="/signup.php">Create account</a>
        </li>
        <?php if ($_SESSION['logged_in'] == true) { ?>
          <!-- estamos identificados -->
          <li>
            <a href="/logout.php">Close session</a>
          </li>
        <?php } else { ?>
          <!-- NO estamos identificados -->
          <li>
            <a href="/login.php">Log in</a>
          </li>
        <?php } ?>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="http://blog.deloreanipsum.com/">Blog</a></li>
      </ul>
    </nav>
  </div>
</header>

<!-- Docs page layout -->
<div class="bs-docs-header" id="content">
  <div class="container">
    <h1><?php echo $title ?></h1>
    <p><?php echo $description ?></p>
  </div>
</div>
