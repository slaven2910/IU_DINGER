
<!-- upload comment -->

<?php
if (isset($_POST["post"])) {
$comment = $_POST['comment'];
require_once 'db-connect/dbConnection.php';
$id = $_GET["id"];
$newId = (executeSQL("SELECT max(commentid) FROM commentMock")->fetch())[0]+1;
$insertLine = "INSERT INTO commentMock (commentId, id, owner, comment) values ($newId,  $id, 'Max Musterman', '$comment')";
executeSQL($insertLine); 
}


/* delete comment */


?>