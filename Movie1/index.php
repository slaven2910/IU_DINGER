

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MovieReviewApp
    </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    <link rel="stylesheet" href="styles.css">

    <link rel="stylesheet" href="C:\httpd-2.4.54-win64-VS17\Apache24\htdocs\IU_DINGER\Movie1\dist\css\styles.css">
</head>
<body class="bg-dark">
<div class="container">
<!-- Navbar -->
<?php include('./components/navbar.php'); ?>

<section>
<div class="row py-5">
<?php
require_once 'db-connect/dbConnection.php';
session_start();
$sqlSelect = "select * from public.\"Movies\"";
$queryResult = executeSQL($sqlSelect);
foreach($queryResult as $row){
  $movieId = $row['ID'];
  $title = $row['title'];
  $genre = $row['genre'];
  $publishingYear = $row['publishingyear'];
  // TODO: need to change later
  // $rated = $row['rated'];
  // $rating = $row['rating'];
  // $director = $row['director'];
  // $writer = $row['writer'];
  // $actors = $row['actors'];
  $plot = $row['plot'];
  $poster = $row['image'];
  $dom = new DOMDocument();
  
 /*  $div1 = $dom->createElement('div');
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

  $htmlString=$dom->saveHTML(); */
  echo "<div class='col-md-3'>
  <div class='well text-center'>
      <img src='$poster'>
      <h5>${title}</h5>
      <a class='btn btn-light' href='movieDetails.php?id=$movieId'>Movie Details</a>
  </div>
</div>";
}
?>
</div>
</section>
</div>
    
</body>
</html>