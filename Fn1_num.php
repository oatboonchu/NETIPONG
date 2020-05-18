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
        
            <img src="img/profile.png" style="
            position: absolute;
            width: 63px;
            height: 64px;
           left: 31px;
            top: 36px;">

            <img src="img/logo.png" style="
            position: absolute;
            width: 72px;
            height: 57.93px;
            left: 325px;
            top: 36px;">

            <div style=" position: absolute;
            width: 366px;
            height: 283px;
            left: 24px;
            top: 123px;
            background: #FFFFFF;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            border-radius: 30px;
            "> 
                
                   

            </div>
            <form action="Fn1_randfood_2.php" method="post">
            <c  class="font_moon"
                style="position: absolute;
                width: 250px;
                height: 28px;
                left: 140px;
                top: 160px; 
                font-size: 30px;             
                color: #F8CE4E;">ใส่จำนวนคน</c>
            
                <d  class="font_moon"
                    style="position: absolute;
                    width: 109px;
                    height: 31px;
                    left: 61px;
                    top: 227px;                              
                    color: #918D8D;">จำนวนคน :</d>

                <input class="font_moon" name="numP" type="number" min="1" max="100" step="1" value="1" style="position: absolute;               
                    margin: auto;
                    width: 102.15px;
                    height: 37px;
                    left: 180px;
                    top: 221px;
                    color: #918D8D; 
                    background-color: #E7E7E7;
                    border: 0cm;
                    border-radius: 30px;
                    text-align: center;
                    ">

                    <button class="button" style="
                        position: absolute;
                        width: 102.15px;
                        height: 37px;
                        left: 218px;
                        top: 303px;
                        border-width: thin;
                        background-color: #F8CE4E;
                        color: #918D8D;
                        ">ยืนยัน</button>
            </form>

                <form action="Fn1_choose.php" >
                    <button class="button" style="
                        position: absolute;
                        width: 102.15px;
                        height: 37px;
                        left: 105px;
                        top: 303px;
                        border-width: thin;
                        background-color: #F8CE4E;
                        color: #918D8D;
                        ">ย้อนกลับ</button>
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