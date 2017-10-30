<?php
session_start();
$errorMessage = '';
if(isset($_POST['username'])){
        try {
            $servername = "localhost";
            $username = "root";
            $password = "";
            $database = "dice";
            $userPassword = password_hash($_POST['password'], PASSWORD_DEFAULT);
            $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $stmt = $conn->prepare("INSERT INTO users (username, password)
                                    VALUES (:username, :password )");
            $stmt->bindParam(':username', $_POST['username']);
            $stmt->bindParam(':password', $userPassword);
            $stmt->execute();
            header("Location: index.php");
        } catch (PDOException $e) {
            if ($e->getCode() == 23000) {
                $errorMessage = "Vartotojas tokiu vardu jau egzistuoja";
            } else {
                $errorMessage = $e->getMessage();
            }
        }      
}

?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/register.js"></script>
  
  </head>
  <body>
        <div class="container-fluid">
            <?php if (!empty($errorMessage)) :?>
            <div class="row">
                <div class="col alert alert-danger">
                    <?php echo $errorMessage; ?>
                </div>
            </div>
            <?php endif; ?>
                <div class="row">
                        <div class="col"></div>
                        <div class="col">
                            <form action="" method="POST" id="registerForm">
                                        <br>
                                        <h2>Register</h2>
                                        <div id="alert2"></div>
                                        <br>
                                        <div class="input-group">
                                            <input name="username" class="form-control form-control-sm" type="text" placeholder="Username">
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <input id="pass" name="password" class="form-control form-control-sm" type="password" required="required" placeholder="Password">
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <input id="pass2" class="form-control form-control-sm" type="password" required="required" placeholder="Repeat Password">
                                        </div>
                                        <br>
                                        <div class="input-group">
                                            <input id="register" class="btn btn-info" type="submit" value="Register new user">&nbsp
                                            <a class="btn btn-info" href="login.php" >Back to login page</a>
                                        </div>

                                </form>
                        </div>
                        <div class="col"></div>
                </div>
        </div>
      
  </body>
</html>