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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="C:\httpd-2.4.54-win64-VS17\Apache24\htdocs\IU_DINGER\Movie1\dist\css\styles.css">

</head>
<body class="bg-dark">

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
$sqlSelect = "select * from commentmock where id = $id";
$queryResult = executeSQL($sqlSelect);
foreach($queryResult as $row){
  $commentId = $row['commentid'];
  $written_by = $row['owner'];
  $comment = $row['comment'];
  echo "
  <form action='delete.php?id=$id&commentId=$commentId' method='post'>
  <ul class='list-group'>
  <li class='list-group-item'>
    <div class='d-flex bd-highlight'>
    <form method='post' action='delete.php'>
    <small class='mr-auto p-2 bd-highlight'>- $written_by</small>
    <a href='edit.php' class='p-2 bd-highlight' name='editComment'><i class='fa-sharp fa-solid fa-pen'></i></a>
    <a  data-bs-toggle='modal' data-bs-target='#exampleModal' class='p-2 bd-highlight' name='deleteComment'><i class='fa-solid fa-trash'></i></a>
    </div>
    <p> $comment </p>
    </form>
</li>
<hr >
</ul>
</form>
";

?>
<div class="modal" id="exampleModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
      <h5 class="modal-title">Are you sure you want to delete this comment?</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"></span>
        </button>
      </div>
      <div class="modal-body">
        <p>This action is irreversable.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <form action=<?php echo "delete.php?id=$id&commentId=$commentId"?> method='post'>
        <a type="post" href=<?php echo "delete.php?id=$id&commentId=$commentId"  ?> class="btn btn-primary">Delete comment</a>
</form>
      </div>
    </div>
  </div>
</div>
<?php } ?>
<!-- Modal -->
<!-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" href='delete.php?id=$id&commentId=$commentId' class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
 -->
 
</section>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</body>
</html>