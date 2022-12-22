<?php
session_start();
// change to original database information
$dbConn = pg_connect("host=localhost port=5432 dbname=SlyTV user=postgres password=1234") or die("Database connection failed... " . pg_last_error());

if (isset($_POST["username"]) && isset($_POST["eMail"]) && isset($_POST["password"]) && isset($_POST["pwd-repeat"])) {

    function validate($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $uname = validate($_POST["username"]);
    $eMail = validate($_POST["eMail"]);
    $pwd = validate($_POST["password"]);
    $pwdRepeat = validate($_POST["pwd-repeat"]);

    $typedInData = "uname=" . $uname . "&eMail=" . $eMail;

    echo $typedInData;

    if (empty($uname)) {
        header("Location: signUp.php?error=Name is required&$typedInData");
        exit();
    } else if (empty($eMail)) {
        header("Location: signUp.php?error=E-Mail is required&$typedInData");
        exit();
    } else if (empty($pwd)) {
        header("Location: signUp.php?error=Password is required&$typedInData");
        exit();
    } else if (empty($pwdRepeat) || $pwd !== $pwdRepeat) {
        header("Location: signUp.php?error=Repeated password does not match the original&$typedInData");
        exit();
    } else {
        // password hashing for security reasons --> https://www.php.net/manual/de/faq.passwords.php
        $pwd = password_hash($pwd, PASSWORD_DEFAULT);

        $nameQuery = "SELECT * FROM public.\"Users\" WHERE username='$uname'";
        $nameQueryResult = pg_query($dbConn, $nameQuery);

        $eMailQuery = "SELECT * FROM public.\"Users\" WHERE email='$eMail'";
        $eMailQueryResult = pg_query($dbConn, $eMailQuery);

        if (pg_num_rows($nameQueryResult) > 0) {
            header("Location: signUp.php?error=Username is already taken&$typedInData");
            exit();
        } else if (pg_num_rows($eMailQueryResult) > 0) {
            header("Location: signUp.php?error=This E-Mail is already in use, try logging in&$typedInData");
            exit();
        } else {
            $insert = "INSERT INTO public.\"Users\"(username, email, password) VALUES('$uname', '$eMail', '$pwd')";
            $result = pg_query($dbConn, $insert);

            if ($result) {
                header("Location: signUp.php?success=Account created successfully");
                exit();
            } else {
                header("Location: signUp.php?error=unknown error occurred&$typedInData");
                exit();
            }
        }
        //     $row = pg_fetch_assoc($queryResult);

        //     if ($row["email"] === $eMail && $row["password"] === $pwd) {
        //         $_SESSION["userID"] = $row["userID"];
        //         $_SESSION["email"] = $row["email"];
        //         $_SESSION["username"] = $row["username"];
        //         header("Location: login.php");
        //         exit();
        //     } else {
        //         header("Location: signUp.php?error=Incorrect E-Mail or password");
        //         exit();
        //     }
    }
} else {
    header("Location: signUp.php?error=was ist passiert");
    exit();
}
