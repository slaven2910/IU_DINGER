<?php
require_once 'query.php';
?>

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

<section>
  <h3>Comments:</h3>
<hr color="white">
<form method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="comment">Your movie thoughts..</label>
    <textarea type="text" class="form-control" name="comment" id="comment" rows="3"></textarea>
  </div>
  <input type="submit" class="btn btn-primary mb-3" name="post">
</form>
<hr>
</section>
<!-- other comments -->
<section>
<?php
$id = $_GET["id"];
$sqlSelect = "select * from commentMock where id = $id";
$queryResult = executeSQL($sqlSelect);
foreach($queryResult as $row){
  $commentId = $row['id'];
  $written_by = $row['owner'];
  $comment = $row['comment'];
  echo "<ul class='list-group'>
  <li class='list-group-item'>
    <div class='d-flex bd-highlight'>
    <form method='post' action='delete.php'>
    <small class='mr-auto p-2 bd-highlight'>- $written_by</small>
    <a href='edit.php' class='p-2 bd-highlight' name='editComment'><i class='fa-sharp fa-solid fa-pen'></i></a>
    <a href='delete.php?id=$commentId' class='p-2 bd-highlight' name='deleteComment'><i class='fa-solid fa-trash'></i></a>
    </div>
    <p> $comment </p>
    </form>
</li>
<hr >
</ul>";
}
?>

 
</section>
</body>
</html>