

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
<?php include('./components/navbar.php'); ?>

<section>
<div class="row py-5">
<?php
require_once 'db-connect/dbConnection.php';
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
<div class="col-md-3"></div>
</section>
</div>
    
</body>
</html>