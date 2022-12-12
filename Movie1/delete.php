<?php
require_once 'db-connect/dbConnection.php';
$id = $_GET["id"];
    echo $id;
    header("Location: movieDetails.php?id=$id");
        $deleteLine = "DELETE FROM commentMock WHERE commentId = $commentId";
        executeSQL($deleteLine);
        header("Location: movieDetails.php?id=$id");

?>