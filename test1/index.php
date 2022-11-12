<html><body><?php  
 
/*  phpinfo(); */
$conn_string = "host=localhost port=5432 dbname=test user=postgres password=aspire938";
$dbconn4 = pg_connect($conn_string);

if(!$dbconn4){
    echo "WORKS FOR ME";
}
?></body></html>
