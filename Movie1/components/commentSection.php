<?php
require_once 'post-comment.php';
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
    <link rel="stylesheet" href="..\dist\css\styles.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body class="bg-dark">

<section>
  <h3 class="whiteText">Comments:</h3>
<hr color="white">
<!-- <form method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="comment">Your movie thoughts..</label>
    <textarea type="text" class="form-control" name="comment" id="comment" rows="3"></textarea>
  </div>
  <input type="submit" class="btn btn-primary mb-3" name="post">
</form> -->
<?php 
  $movie_id = $_GET["movie_id"];
  $user_id = $_SESSION['user_id'];
?>
<form id="comment-form" action="/post-comment.php" method="post">
  <label class="whiteText" for="comment">Your movie thoughts..</label><br>
  <textarea id="comment" name="comment" rows="4" cols="50"></textarea><br>
  <input type="hidden" name="movie_id" value="<?php echo $movie_id ?>">
  <input type="hidden" name="user_id" value="<?php echo $user_id ?>">
  <input class="btn btn-dark border border-light textWhite mb-3" type="submit" value="Submit">
</form> 

<!-- <script>
    $(document).ready(function() {
      $('#comment-form').submit(function(event) {
        event.preventDefault(); // Prevent the form from being submitted

        // Get the form data
        var formData = $(this).serialize();
        console.log(formData);

        // Send an AJAX request to the server
        $.ajax({
          type: 'POST',
          url: 'post-comment.php',
          data: formData,
          success: function(data) {
            // Update the comments on the page
            $('#comments').html(data);
          }
        });
      });
    });
  </script>
 -->
<script>
document.addEventListener('DOMContentLoaded', () => {
  const form = document.getElementById('comment-form');
  form.addEventListener('submit', event => {
    event.preventDefault(); // Prevent the form from being submitted

    // Get the form data
    const formData = new FormData(form);
    console.log(formData);
    for (const [key, value] of formData.entries()) {
      console.log(key, value);
    }

    // Send a Fetch request to the server
    fetch('post-comment.php', {
      method: 'POST',
      body: formData
    })
      .then(response => response.text())
      .then(data => {
        // Update the comments on the page
        document.getElementById('comments').innerHTML = data;
        console.log(data)
      });
  });
});
</script>

<hr>
</section>
<!-- other comments -->
<section>
<?php
$movie_id = $_GET["movie_id"];

$commentsQuery = "SELECT u.username, mc.comment, mc.id
FROM public.\"Users\" u
INNER JOIN public.\"movie_comments\" mc ON u.user_id = mc.user_id
WHERE mc.movie_id = $movie_id
";
$queryResult = executeSQL($commentsQuery);
foreach($queryResult as $row){
  $user_name = $row['username'];
  $comment = $row['comment'];
  $commentId = $row['id'];
 
  echo "
  <form action='delete.php?movie_id=$movie_id&commentId=$commentId' id='comments' method='post'>
  <ul class='list-group'>
  <li class='list-group-item'>
    <div class='d-flex bd-highlight'>
    <form method='post' action='delete.php'>
    <small class='mr-auto p-2 bd-highlight'>- $user_name</small>
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