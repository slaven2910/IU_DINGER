

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MovieReviewApp
    </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/cyborg/bootstrap.min.css" integrity="sha384-nEnU7Ae+3lD52AK+RGNzgieBWMnEfgTbRHIwEvp1XXPdqdO6uLTd/NwXbzboqjc2" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container">
<!-- Navbar -->
<section>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.php">
            <img src="png/logo-white.png" class="img-fluid" style="width: 100px;
    height: 100px;
    border-radius:70%;
    overflow: hidden;
    margin-top: -6px;">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Categories</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Top Rated</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

</section>
<section>
<div class="row py-5">
<?php
require_once 'dbConnection.php';
session_start();
$sqlSelect = "select * from movieData ";
$queryResult = executeSQL($sqlSelect);
foreach($queryResult as $row){
  $movieId = $row['id'];
  $title = $row['title'];
  $genre = $row['genre'];
  $released = $row['released'];
  $rated = $row['rated'];
  $rating = $row['rating'];
  $director = $row['director'];
  $writer = $row['writer'];
  $actors = $row['actors'];
  $plot = $row['plot'];
  $poster = $row['poster'];
  $dom = new DOMDocument();
  
  $div1 = $dom->createElement('div');
  $div1->setAttribute('class', 'col-md-3');
  $dom->appendChild($div1);
  $div2 = $dom->createElement('div');
  $div2->setAttribute('class', 'well text-center');
  $div1->appendChild($div2);
  $image = $dom->createElement('img');
  $image->setAttribute('src', $poster);
  $div2->appendChild($image);
  $movieTitle = $dom->createElement('h4', $title);
  $movieTitle->setAttribute('class', 'pt-3 pb-1');
  $div2->appendChild($movieTitle);
  $movieDetailsButton = $dom->createElement('a', 'Movie Details');
  $movieDetailsButton->setAttribute('class', 'btn btn-light');
  $movieDetailsButton->setAttribute('id', $movieId);
  $movieDetailsButton->setAttribute('href', "movieDetails.php?id=$movieId" );
  
  
  $div2->appendChild($movieDetailsButton);

  $htmlString=$dom->saveHTML();
  echo $htmlString;
}
?>
</div>
</section>
</div>
    
</body>
</html>