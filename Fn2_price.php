<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@200&display=swap" rel="stylesheet">
    
    <style>
        
        @import url("mystyle.css");
        
    </style>
</html>
<head>
    
</head>
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
            
            <div style=" position: absolute;
            width: 366px;
            height: 326px;
            left: 24px;
            top: 123px;        
            background: #FFFFFF;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            border-radius: 30px;
            "> 
                
                <c  class="font_moon"
                style="position: relative;
                width: 114px;
                height: 28px;
                left: 70px;
                top: 32px;
                font-weight: bold;             
                color: #F8CE4E;
                font-size: 27px;">ใส่ราคา - จำนวนคน</c>
                <d class="font_moon"
                    style="position: absolute;
                    width: 109px;
                    height: 31px;
                    left: 31px;
                    top: 103px;                             
                    color: #918D8D;">ราคา :</d>
                    <form action="Fn2_Result.php" method="post">
                    <div class="font_moon" style="
                    position: absolute; 
                    left: 125px;
                    top: 96px;
                    ">
                         <select  name="price" style="
                            color: #918D8D;
                            background-color: #E7E7E7; 
                            border: 0cm; 
                            width: 175px; 
                            height: 35px; 
                            background: #E7E7E7;
                            border-radius: 10px;
                            font-size: 22px;
                            line-height: 2 6px;
                            font-family: 'Kanit';

                            ">
                            
                            <optgroup  style = " 
                                font-family: 'Kanit';
                                font-style: normal;
                                font-weight: normal;"
                                 label="ต่ำสุด - สูงสุด">
                                <option value="0-99">0 - 99</option>
                                <option value="100-199">100 - 199</option>
                                <option value="200-299">200 - 299</option>
                                <option value="300-399">300 - 399</option>
                                <option value="400-499">400 - 499</option>
                                <option value="500-599">500 - 599</option>
                                <option value="600-699">600 - 699</option>
                                <option value="700-799">700 - 799</option>
                                <option value="800-899">800 - 899</option>
                                <option value="900-999">900 - 999</option>
                                <option value="มากกว่า1000">มากกว่า 1000</option>
                            </optgroup>
                        </select>
                    </div>
                    <d class="font_moon"
                        style="position: absolute;
                        width: 109px;
                        height: 31px;
                        left: 31px;
                        top: 161px;
                        color: #918D8D;">จำนวนคน :</d>
                    <input class="font_moon" name="numP" type="number" min="1" max="100" step="1" value="1" style="position: absolute;               
                        width: 60px;
                        height: 37px;
                        left: 150px;
                        top: 159px;
                        color: #918D8D; 
                        background-color: #E7E7E7;
                        border-radius: 15px;
                        font-size: 22px;
                        line-height: 2 6px;
                        border: 0cm;
                        border-radius: 10px;
                        text-align: center;
                        ">
                    <button class="button" style="
                        position: absolute;
                        width: 102.15px;
                        height: 37px;
                        left: 190px;
                        top: 247px;
                        background-color: #F8CE4E;
                        border-width: thin;
                        color: #918D8D;
                        ">ยืนยัน</button>
                </form>
            </div>
            
                
                
                <form action="Fn2_choose.php" >
                    <button class="button" style="
                        position: absolute;
                        width: 102.15px;
                        height: 37px;
                        left: 105px;
                        top: 370px;
                        background-color: #F8CE4E;
                        border-width: thin;
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