<?php
    $authenticated = false;
    if(isset($_POST['verify']) && $_POST['verify']=="Verify"){
        $user = $_POST['user'];
        $pwd = $_POST['pwd'];

        $conn = pg_connect("host=localhost port=5432 dbname=logindb user=postgres password=aspire938");
        if($conn){
            $query = "select * from verify($1, $2)";
            $res = pg_query_params($conn, $query, array($user, $pwd));

            $result = pg_fetch_object($res);
            if($result){
                $authenticated = $result -> verify==1;
            }

        }

        if(!$authenticated){
            echo "not valid";
        }
        else{
            header('location: page2.php');
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="post">
       Username: <input type="text" name="user"/><br/>
       Password: <input type="password" name="pwd"/><br/>
       <input type="submit" value="Verify" name="verify" />
    </form>
</body>
</html>