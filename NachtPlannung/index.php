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
$max = array('Italienisch', ' Griechisch', 'Chinesaisch', 'Tanzen', 'Museum', 'Kino');
$hannah = array('Chinesiscsh', 'Italienisch', 'Griechisch', 'Tanzen', 'Museum');
$petra = array('Italienisch', 'Steakhouse', 'Chinesdaisch', 'Karaoke', 'Museum', 'Tanzen');
$günther = array('Italienisch', 'Steakhouse', 'Chinessisch', 'Tanzen', 'Kino');
$italienisch = 0;
$chinesisch = 0;
$griechisch = 0;
$steakhouse = 0;
function essen($arr){
    foreach($arr as $i =>$value ){
        if($value == 'Italienisch') $italienisch++;
        else if($value == 'Chinesisch') $chinesisch++;
        else if($value == 'Griechisch') $griechisch++;
        else if($value == 'Steakhouse') $steakhouse++;
    }
}
essen($max);
essen($hannah);
essen($petra);
essen($günther);

if($steakhouse > $chinesisch And $steakhouse > $griechisch And $steakhouse > $griechisch) echo "Steakhouse";
    if($chinesisch >= $steakhouse And $chinesisch >= $italienisch And $chinesisch >= $griechisch ) echo "Chinesisch";

?>
    
</body>
</html>