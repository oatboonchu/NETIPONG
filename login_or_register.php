<?php 
    session_start();
?>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@200&display=swap" rel="stylesheet">
    <style>
        
        @import url("mystyle.css");
    </style>
</html>

<body style="background-color: gray;">
    <div>
        <div class="page" style="margin-left: 40%;">
            <img src="img/logo.png" style="
            position: absolute;
            width: 353px;
            height: 284px;
            left: 31px;
            top: 164px;">
            
            <form action="login.php" method="post">
                <button class="button" type="submit" style="
                left: 101px;
                top: 515px;
                border-width: thin;"
                >Login</button>
            </form>

            <form action="register.php" method="post">
                <button class="button" type="submit" style="
                left: 101px;
                top: 584px;
                border-width: thin;"
                >Register</button>
            </form>

    </div>


</body>