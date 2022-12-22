<?php
session_start();

if (isset($_SESSION["userID"]) && isset($_SESSION["username"]) && isset($_SESSION["email"])) {

?>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>
      Account
      <?php
      // $name = $_POST["name"];
      // echo $name . "'s Account";
      ?>
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
    <link rel="stylesheet" href="styles.css">
  </head>

  <body>
    <?php include('./components/navbar.php'); ?>

    <div class="container text-center">
      <div class="container my-5">
        <div class="row justify-content-md-center my-3">
          <div class="col-6">
            <img src="png/default_profile.png" class="img-fluid" style=width:300px; alt="profile picture"><br><br><br>
            <a class="btn btn-outline-danger" href="logout.php">Logout</a>
          </div>
          <div class="col">
            <div class="col-6"><?php echo $_SESSION["username"]; ?></div>
            <div class="col-6"><?php echo $_SESSION["email"]; ?></div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-md-3">
        <img class="img-responsive profile-img margin-bottom-20" src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="">

        <ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
            <li class="list-group-item">
                <a href="#"><i class="fa fa-bar-chart-o"></i> Overall</a>
            </li>
            <li class="list-group-item">
                <a href="#"><i class="fa fa-user"></i> Profile</a>
            </li>
            <li class="list-group-item">
                <a href="#"><i class="fa fa-group"></i> Users</a>
            </li>                                        
            <li class="list-group-item">
                <a href="#"><i class="fa fa-cubes"></i> My Projects</a>
            </li>
            <li class="list-group-item">
                <a href="#"><i class="fa fa-comments"></i> Comments</a>
            </li>                                        
            <li class="list-group-item active">
                <a href="#"><i class="fa fa-history"></i> History</a>
            </li>                                       
            <li class="list-group-item">
                <a href="#"><i class="fa fa-cog"></i> Settings</a>
            </li> 
        </ul>   

        <div class="panel-heading-v2 overflow-h">
            <h2 class="heading-xs pull-left"><i class="fa fa-bar-chart-o"></i> Task Progress</h2>
            <a href="#"><i class="fa fa-cog pull-right"></i></a>
        </div>
        <h3 class="heading-xs">Web Design <span class="pull-right">92%</span></h3>
        <div class="progress progress-u progress-xxs">
            <div style="width: 92%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="92" role="progressbar" class="progress-bar progress-bar-u">
            </div>
        </div>
        <h3 class="heading-xs">Unify Project <span class="pull-right">85%</span></h3>
        <div class="progress progress-u progress-xxs">
            <div style="width: 85%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="85" role="progressbar" class="progress-bar progress-bar-blue">
            </div>
        </div>
        <h3 class="heading-xs">Sony Corporation <span class="pull-right">64%</span></h3>
        <div class="progress progress-u progress-xxs margin-bottom-40">
            <div style="width: 64%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="64" role="progressbar" class="progress-bar progress-bar-dark">
            </div>
        </div>
        <hr>
    </div>
    <div class="col-md-9 text-content">
        <h2 class="text-primary">The story of my life</h2>
        <hr/>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pellentesque turpis eu molestie molestie. 
        Integer tristique quam facilisis urna sagittis pulvinar. Nunc lacinia faucibus nisl, vel sodales elit lobortis nec.
        Vivamus et odio vel justo dignissim semper. Integer sit amet vehicula est, pellentesque elementum ex. Lorem ipsum dolor sit amet, 
        consectetur adipiscing elit. Maecenas a felis eros. Nunc ultricies odio a urna pharetra molestie. Duis vitae arcu nulla. Morbi 
        rhoncus felis non tellus mollis, vel porttitor ante tincidunt. Sed vulputate volutpat fringilla. Sed varius, magna id eleifend rutrum,
        velit odio sagittis leo, sit amet egestas orci dui vel ex. Phasellus dapibus tempor orci eget semper.

        Mauris tincidunt dolor nec ipsum eleifend ullamcorper. Donec sed commodo lorem. Vestibulum finibus quam quis urna venenatis pharetra. 
        Ut suscipit velit sit amet turpis convallis consectetur. Praesent tristique vulputate venenatis. Nam vehicula laoreet elit, eget lacinia 
        sapien dignissim non. Nullam in egestas tortor. Vestibulum sit amet elit bibendum odio congue fermentum. Sed volutpat ultricies magna, 
        facilisis pharetra sapien luctus id. In id maximus nibh. Morbi pulvinar sodales urna, et posuere est vulputate ac. Suspendisse facilisis, 
        lacus non placerat mollis, lectus nisi condimentum mi, imperdiet ultrices mi risus vel sapien. Donec sed ligula non massa congue malesuada.
    </div>
  </body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

  </html>

<?php
} else {
  header("Location: login.php");
  exit();
}
?>