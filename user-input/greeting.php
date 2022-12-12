<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $vorname = $_POST["vorname"];
    $nachname = $_POST["nachname"];
    $pic = $_GET["img"];
    echo $pic;

    echo "Hallo $vorname $nachname!";

?>
</body>
</html>