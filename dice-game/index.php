<?php 
    session_start();

    if (!isset($_SESSION['username'])) {
        header("location:login.php");
    };
    
?>


<!doctype html>
<html lang="en">
<head>
    <title>Dice game</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!--<link rel="stylesheet" href="style.css">-->
    <link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
    <br/>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8"></div>
            <div class="col-md-4"><a class="btn btn-info" href="stats.php"><?php echo $_SESSION['username']?></a>&nbsp<a class="btn btn-info" href="login.php?logout" >Logout</a></div>
        </div>

        <div class="row">
            
            <div class="col-md-2"></div>
            <div class="col"><h1>Dice game</h1></div>
        </div>
        <div class="row">
            
            <div class="col-md-3"></div>
            <div class="col"><h3>roll dice, two matching dice - 10 ct win. </h3></div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col">
            </div>
            <div class="col">
                <img id="dice1" src="images/1.png" alt="Mountain View">
            </div>

            <div class="col">
                <img id="dice2" src="images/1.png" alt="Mountain View">
            </div>
            
             <div class="col">
                <img id="dice3" src="images/1.png" alt="Mountain View">
            </div>
            <div class="col">
            </div>
        </div>
        
        <div class="row">
            <div class="col">
            </div>
            <div class="col">
                <div class="row">
                     <button class="col btn btn-primary btn-lg" id="newGame" >New Game</button>
                </div>
                <div class="row">
                    <button class="col btn btn-primary btn-lg" id="rollDice" style="display: none;" >Roll dice</button>
                </div>
            </div>
            <div class="col">
                <div class="row">
                    <div class="col">
                        <h3 class="css">Rolls</h3>
                    </div>
                    <div class="col">
                        <h3 id="rollsNum"> 4/0</h3>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col">
                        <h3 class="css">Your win:</h3>
                    </div>
                    <div class="col">
                        <h3 id="yourWin2"> 0 ct</h3>
                    </div>
                    
                </div>
            </div>
            <div class="col">
            </div>
        
        </div>
        
        
    </div>
<script src="js/app.js"></script>
</body>
</html>