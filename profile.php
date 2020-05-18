<?php 
    session_start();

    $server = "localhost" ;
    $username = "root" ; 
    $password = "root" ;
    $dbname = "fooddom" ;

    $connect = new mysqli($server,$username,$password,$dbname);
    $sameuser = $_SESSION['username'];
    $result = $connect->query("SELECT * FROM member WHERE username = '$sameuser'");
    
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
        <div class="page" style="margin-left: 40%;">
            <a href="Home.php">
                <img src="img/backicon.png" style="position: absolute;
                    width: 97px;
                    height: 57px;
                    left: 18px;
                    top: 39px;">
                    <div class="font_moon"
                        style="position: absolute;
                        width: 42px;
                        height: 16px;
                        left: 47px;
                        top: 57px;
                        line-height: 18px;">Back
                    </div>
            </a>

            <a href="Home.php">
            <img src="img/logo.png" style="
            position: absolute;
            width: 72px;
            height: 57.93px;
            left: 325px;
            top: 36px;">
        </a>
            

            <img src="img/profile.png" style="
            position: absolute;
            width: 250px;
            height: 250px;
            left: 83px;
            top: 120px;">

            <h1 class="font_m" style="position: absolute;
            left: 162px;
            top: 345px; 
            color:#FFFAFA;
            font-size: 35px;">Profile</h1>

            <div style=" position: absolute;
            width: 333px;
            height: 310px;
            left: 40px;
            top: 430px;
            background-color: white;
            border-radius: 30px;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            "> 

                <div class="font_moon" style=" margin-left: 10%; color: #F8CE4E;">
                <br>
                    <?php 
                        $row = $result->fetch_assoc();
                            
                            echo "<g>Username  : ".$row['username']."</g><br><br>";
                            echo "<c>Password  : xxxxxxxxx   </c><br><br>";
                            echo "<d>Firstname : ".$row['Fname']."</d><br><br>";
                            echo "<e>Lastname  : ".$row['Lname']."</e><br><br>";
                            echo "<f>Phone     : ".$row['phone']."</f><br><br>";
                            
                        ?>
                    
                    
                </div>
           
            </div>
            
            <div style="
                width: 366px;
                height: 271px;
                left: 24px;
                top: 128px;">

            </div>

            

            <a href="Fn2_choose.php">
            <img src="img/ranicon.png" style="
                position: relative;
                width: 106px;
                height: 106px;
                left: 154px;
                top: 517px;
                z-index: 1;">
            </a>

        <tap class="bottom_tab" style="border-radius: 30px;">
            <a href="setting.php">
            <img src="img/settingicon.png" style="
                position: absolute;
                left: 78.02%;
                right: 14.01%;
                top: 35%;
                bottom: 3.35%;">
            </a>
            

            <a href="Home.php">
            <img src="img/homeicon.png" style="
                position: absolute;
                left: 14.73%;
                right: 77.29%;
                top: 35%;
                bottom: 3.38%;">
            </a>

        </tap>
            
        </div>
        


</body>