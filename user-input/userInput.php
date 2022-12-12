<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <!-- form action="calculateAge.php" method="post">
        <label>Geben sie ihren Namen an:</label>
        <input type="text" name="personName"><br><br>

        <label for="Geben sie ihr GEburtsdatum an:"></label>
        <input type="date" name="personBirthday"> <br><br>

        <label>Geben sie ihr Geschlecht an:</label>
        <input type="radio" value="w" name="personGender">
        <label>Weiblich</label>
        <input type="radio" value="m" name="personGender">
        <label>Männlich</label>
        <input type="radio" value="d" name="personGender">
        <label>Divers</label>

        <label>Wählen sie Ihre Anrede</label>
        <select name="personGreeting" size="1">
            <option>Hallo</option>
            <option>Guten Tag</option>
        </select><br><br>

        <input type="submit" value="Absenden">
    </form> -->

    <div class="container py-5">
    <form action="greeting.php" method="post">
        <div class="form-row">
        <div class="col">
        <input type="text" class="form-control"  name="vorname" placeholder="First name">
        </div>
        <div class="col">
        <input type="text" class="form-control"  name="nachname" placeholder="Last name">
        </div>
        <input type="submit" class="btn btn-primary" value="Send">

    </form>
    </div>
    <br><br><br>
    

    <form action="img.php" method="post">
<div class="input-group mb-3">
  <div class="custom-file">
    <input type="file" class="custom-file-input" name="img" id="inputGroupFile02">
    <label class="custom-file-label" for="inputGroupFile02" aria-describedby="inputGroupFileAddon02">Choose file</label>
  </div>
  <div class="input-group-append">
    <button type="submit" class="input-group-text btn btn-primary" id="inputGroupFileAddon02">Upload</button>
  </div>
</div>
</form>


    
    </div>
</body>
</html>