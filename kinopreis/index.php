<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    

<p>Eintristtskarte Erwachsene 5Euro
    Kinder 3 Euro 
    Gruppe von mindestens 5 Personen erhalten eine Ermäßigung von 0.5 Euro pro Karte
</p>
<?php
$anzahlErw = 10;
$anzKinder=12;
$rabatt = 0.0;
if(($anzahlErw + $anzKinder) >= 5){
    $rabatt=0.5;
}
$preis = $anzahlErw*(5-$rabatt) + $anzKinder*(3-$rabatt);
echo $preis;

?>
    
</body>
</html>