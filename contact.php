<?php 
    session_start();

    ?>
<!DOCTYPE html>
<html>
<?php $title="Bloodbank | About page"; ?>
<?php require 'head.php'; ?>
<head>
  <title></title>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">LIFE DROP</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="main.php">Home <span class="sr-only">(current)</span></a>
       
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="about.php">About</a>
       
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="contact.php">Contact</a>
       
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="login.php">Login<span class="sr-only">(current)</span></a>
       
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="register.php">Register<span class="sr-only">(current)</span></a>
       
      </li>
     
    </ul>
 
  </div>
</nav>

<div class="jumbotron">
  <h1>Anytime!</h1>
  <p>We are always here to help you!</p>
</div>

<section class="my-5">
  <div class="py-5">
    <h1 class="text-center">Contact Us</h1>
  </div>




<div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 mb-5">
                        <div class="card">
                        <img src="image/AKRATI.jpg" height="4096" width="4096" class="img-fluid aboutimg">
                            <div class="card-body">
                            <h1>Akrati Yadav</h1>
                            <p>akratiyadav2002@gmail.com</p> 
                            <p>6455674567</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 mb-5">
                        <div class="card">
                        <img src="image/JUGUNU.jpg" height="4096" width="4096" class="img-fluid aboutimg">
                            <div class="card-body">
                            <h1 >Jugunu Singh</h1>
                            <p >jugunusingh2000@gmail.com</p>
                            <p >6345567890</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12 mb-5">
                        <div class="card">
                        <img src="image/PRITI.jpg" height="4096" width="4096" class="img-fluid aboutimg">
                            <div class="card-body">
                            <h1>Priti    Raj</h1>
                            <p >pritiraj0706@gmail.com</p>
                            <p >7618208166</p>
                            </div>
                        </div>
                    </div>
</div><div>
  <p class="text-center bg-dark text-white">lifedropbloodbank@gmail.com<br>+91-67890-65634<br>lifedrop.official</p></div>
 
  
  <a href="contact.php"> </a>
</div>
</section>
<?php require 'footer.php'; ?>
</body>
</html>