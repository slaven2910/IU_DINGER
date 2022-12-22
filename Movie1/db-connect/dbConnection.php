<?php
function executeSQL(String $query) : PDOStatement {
    $host = "localhost";
    $port = "5432";
    $db = "movies";
    $user = "postgres";
    $pw = "admin";
    $connStr = "pgsql:host=$host;port=$port;dbname=$db;";
    $dbConnection = new PDO($connStr, $user, $pw);
    return $dbConnection->query($query);
}




?>