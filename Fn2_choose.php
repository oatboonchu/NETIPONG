<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@200&display=swap" rel="stylesheet">
    <style>
        @import url("mystyle.css");     
        .block{
           position: absolute;
                width: 200px;
                height: 200px;
                left: 15px;
                top: 15px;         
                background: #F8CE4E;
                border-radius: 20px;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        } 
    </style>
</html>

<body style="background-color: gray;">
    <div>
        <div class="page" style="margin-left: 40%;">
            <a href="profile.php">
                <img src="img/profile.png" style="
                position: absolute;
                width: 63px;
                height: 64px;
                left: 31px;
                top: 36px;">
            </a>
            <a href="Home.php">
                <img src="img/logo.png" style="
                position: absolute;
                width: 72px;
                height: 57.93px;
                left: 325px;
                top: 36px;">
            </a>

            <div style="position: absolute;
                width: 366px;
                height: 658px;
                left: 24px;
                top: 123px;          
                background: #FFFFFF;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
                border-radius: 30px;
                ">              
            </div>

            <div class="font_moon" style="position: absolute;
                width: 250px;
                height: 39px;
                left: 75px;
                top: 191px;
                color: #F8CE4E;
                font-weight: bold; 
                line-height: 26px;
                font-size: 28px;
                ">สุ่มร้าน-สุ่มอาหาร
            </div>
            
            <img src="img/foodicon.png" style="
            position: absolute;
            width: 59px;
            height: 59px;
            left: 300px;
            top: 165px;">


            <form action="Fn2_price.php" method="post">
                <button class="block" class="font_moon" style="position: absolute;
                width: 246px;
                height: 105px;
                left: 84px;
                top: 295px;
                border-width: thin;
                font-family: 'Kanit';
                line-height: 26px;
                font-size: 18px;
                color: rgb(255, 255, 255);
                ">สุ่มแบบมีราคากำหนด </button>    
            </form>

            <form action="Fn2_num.php" method="post">
                <button class="block" class="font_moon" style="position: absolute;
                width: 246px;
                height: 105px;
                left: 84px;
                top: 429px;
                border-width: thin;
                font-family: 'Kanit';
                line-height: 26px;
                font-size: 18px;
                color: rgb(255, 255, 255);
                ">สุ่มแบบไม่มีราคากำหนด </button> 
            </form>

            <a href="Fn2_choose.php">
                <img src="img/ranicon.png" style="
                    position: relative;
                    width: 106px;
                    height: 106px;
                    left: 154px;
                    top: 788px;
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
        
    </div>


</body>