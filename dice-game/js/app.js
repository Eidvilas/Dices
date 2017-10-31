
win=0;
win_total=0;
clicks=0;

$(document).ready(function(){
    $("#newGame").click(function(){
        $("#rollDice").css("display","inline");
         win_total=0;
         win=0;
    });
});



$(document).ready(function(){
    
    var win_total = 0;
    
    $("#newGame").click(function(){
        $("#rollDice").css("display","inline");
        document.getElementById("yourWin2").innerHTML ='';
    });
    
    
    $('#rollDice').click(function() {
        
        clicks++;
        
        function randomWin() {
            x = Math.floor(Math.random() * ((6 - 1) + 1) + 1);
            y = Math.floor(Math.random() * ((6 - 1) + 1) + 1);
            z = Math.floor(Math.random() * ((6 - 1) + 1) + 1);

            $('#dice1').attr('src', "images/" + x + ".png");
            $('#dice2').attr('src', "images/" + y + ".png");
            $('#dice3').attr('src', "images/" + z + ".png");

            if (x === y) {
                win_total +=  x * 10;
            } else if (y === z) {
                win_total +=  y * 10;
            } else if (x === z) {
                win_total +=  x * 10;
            } 
        
            win=Math.round(win_total)/100;
            document.getElementById("yourWin2").innerHTML = win + " eur";  
            document.getElementById("rollsNum").innerHTML = "4/" + clicks; 
        }
        
        function post(){
            console.log(win);
            $.post(
                "game.php",
                {
                    result: win
                },
                function(data) {
                    console.log(data);
                }        
                ); 
                
        }
 
        if (clicks < 4) {
            randomWin();
        } else if (clicks === 4) {
            randomWin();
            post();
            $("#rollDice").css("display","none");
            win_total = 0;
            clicks = 0;              
        };

    });
});

$('#iii').click(function() {
document.getElementById("ggg").innerHTML = stat;
});


