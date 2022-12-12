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

<form action="museumOutput.php" method="post">
  <div class="form-group">
    <label for="formGroupExampleInput">Enter your age:</label>
    <input type="number" class="form-control" name="age" id="formGroupExampleInput" placeholder="Age...">
  </div>
  <div class="form-group">
  <div class="custom-control custom-radio">
    
  <input type="radio" id="customRadio1" name="isStudent" value="yes" class="custom-control-input">
  <label>Are you a student?</label><br>
  <label class="custom-control-label" for="customRadio1">Yes</label>
</div>
<div class="custom-control custom-radio">
  <input type="radio" id="customRadio2" name="isStudent" value="no" class="custom-control-input">
  <label class="custom-control-label" for="customRadio2">No</label>
</div>
  </div>
<div>
<label >Select the day when you want to visit the museum<label>

  <select class="custom-select" name="dayInAWeek">
    <option value="0">Monday</option>
    <option value="1">Tuesday</option>
    <option value="2">Wednesday</option>
    <option value="3">Thursday</option>
    <option value="4">Friday</option>
    <option value="5">Saturday</option>
    <option value="6">Sunday</option>
  </select>
  </div>
  <button class="btn btn-primary" type="submit">Submit</button>
</form>
    
</body>
</html>