<?php
require_once 'db-connect/dbConnection.php';
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href=".\dist\css\styles.css">
</head>
<body>
    <div class="darkbg">
<div class="container">
    <!-- Navbar -->
    <?php include('./components/navbar.php'); ?>

<section>
<div class="well">
<?php
$id = $_GET["movie_id"];
echo $id;
$sqlSelect = "SELECT * from public.\"Movies\" where id=$id";
$queryResult = executeSQL($sqlSelect);
foreach($queryResult as $row){
  $movieId = $row['id'];
  $title = $row['title'];
  $plot = $row['plot'];
  $poster = $row['image'];
  /* $dom = new DOMDocument();

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

  $htmlString=$dom->saveHTML(); */
  echo "
  <div class='row'>
      <h2 class='text-light mx-auto d-block'>$title</h2>
  </div>
  <div class='row'>
      <img src='$poster' class='thumbnail mx-auto d-block' style='height:400px;width:400px;'>
  </div>
<div class='row'>
      <h3 class='mx-auto d-block text-light'>Plot:</h3>
      <p class='mx-auto d-block text-light'>$plot </p>
      <hr>
  </div>
";

}
?>
</div>
</section>


<!-- comment section -->
<?php include('./components/commentSection.php'); ?>

<hr color="white">

</div>
</div>
</body>
</html>