<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
    <form class="form-inline my-2 my-lg-0 mx-auto" >
      <input class="form-control mr-sm-2 text-center" style="width:30rem;" type="search" placeholder="Search for movies..." aria-label="Search" >
      <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
    </form>
    <form action="">
      <button class="btn btn-outline-dark">Login</button>
    </form>
  </div>
</nav>

</section>
<section>
<div class="well">
<?php
$id = $_GET["id"];
require_once 'dbConnection.php';
session_start();
$sqlSelect = "select * from movieData  where id = $id";
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

  $div = $dom->createElement('div');
  $div->setAttribute('class', 'row py-5');
  $dom->appendChild($div);

  $div1 = $dom->createElement('div');
  $div1->setAttribute('class', 'col-md-8');
  $div->appendChild($div1);

  $h2 = $dom->createElement('h2', $title);
  $div1->appendChild($h2);

  $ul = $dom->createElement('ul');
  $ul->setAttribute('class', 'list-group');
  $div1->appendChild($ul);

  $liGenre = $dom->createElement('li', $genre);
  $liGenre->setAttribute('class', 'list-group-item');
  $ul->appendChild($liGenre);

  $liReleased = $dom->createElement('li', $released);
  $liReleased->setAttribute('class', 'list-group-item');
  $ul->appendChild($liReleased);

  $liRated = $dom->createElement('li', $rated);
  $liRated->setAttribute('class', 'list-group-item');
  $ul->appendChild($liRated);

  $liRating = $dom->createElement('li', $rating);
  $liRating->setAttribute('class', 'list-group-item');
  $ul->appendChild($liRating);

  $liDirector = $dom->createElement('li', $director);
  $liDirector->setAttribute('class', 'list-group-item');
  $ul->appendChild($liDirector);

  $liWriter = $dom->createElement('li', $writer);
  $liWriter->setAttribute('class', 'list-group-item');
  $ul->appendChild($liWriter);

  $liActors = $dom->createElement('li', $actors);
  $liActors->setAttribute('class', 'list-group-item');
  $ul->appendChild($liActors);

  $h3Plot = $dom->createElement('h3', 'Plot:');
  $h3Plot->setAttribute('class', 'pt-3');
  $div1->appendChild($h3Plot);

  $plot = $dom->createElement('p', $plot);
  $div1->appendChild($plot);

  $div2 = $dom->createElement('div');
  $div2->setAttribute('class', 'col-md-4');
  $div->appendChild($div2);

  $imgPoster = $dom->createElement('img');
  $imgPoster->setAttribute('class', 'thumbnail py-3');
  $imgPoster->setAttribute('src', $poster);
  $div2->appendChild($imgPoster);

  $htmlString=$dom->saveHTML();
  echo $htmlString;

}
?>

</div>
</section>


<!-- comment section -->
<section>
  <h3>Comments:</h3>
<hr color="white">

</section>
</div>
</body>
</html>