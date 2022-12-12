<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Document</title>
</head>
<body>

<?php
    $age = $_POST["age"];

    $isStudentRadio = $_POST['isStudent'];

    if($isStudentRadio == 'yes') $isStudent = true;
    else $isStudent = false;

    $select = $_POST['dayInAWeek'] ?? '';
    $dayInAWeek = match ($select) {
        '0' => 'Monday',
        '1' => 'Tuesday',
        '2' => 'Wednesday',
        '3' => 'Thursday',
        '4' => 'Friday',
        '5' => 'Saturday',
        '6' => 'Sunday',
        default => 'unknown value',
    };

    $ticket = 10;
    if($age <= 14) $ticket +=3;
    else if($isStudent) $ticket -= 2;
    

    if($dayInAWeek === 'Monday' || $dayInAWeek === 'Tuesday') $ticket -=2;
    else if($dayInAWeek === 'Saturday' || $dayInAWeek ==='Sunday') $ticket +=1;

    echo "Your ticket costs $ticket$"

?>
    
</body>
</html>