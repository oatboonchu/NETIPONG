<?php   
    session_start();

    $server = "localhost" ;
    $username = "root" ; 
    $password = "root" ;
    $dbname = "fooddom" ;

    $connect = new mysqli($server,$username,$password,$dbname);
    
    $pricerange = $_SESSION['price'];
    $resname = $_SESSION['resname'];
    $numP = $_SESSION['numP'];

    $randfooddom =$connect->query(" SELECT menu.res_name , food.name , menu.prices , food.number_range
                                    FROM menu
                                    INNER JOIN food
                                    ON food.food_ID = menu.food_ID AND menu.res_name = '$resname'
                                    ORDER BY RAND()
                                    LIMIT 1;
                                ");
    while($limit = $randfooddom->fetch_assoc()){
        $food_name = $limit['name'];
        $res_name = $limit['res_name'];
        $price_food = $limit['prices'];
    }

    ?>
    <!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@200&display=swap" rel="stylesheet">
    <style>
        @import url("mystyle.css");     
        .block{
            position: absolute;
                width: 200px;
                height: 100px;
                left: 68px;      
                background: #F8CE4E;
                border-radius: 20px;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25)
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
            height: 685px;
            left: 24px;
            top: 116px;          
            background: #FFFFFF;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            border-radius: 30px;
            ">              
            </div>

            
                    
            <div style="position: absolute;
            width: 335px;
            height: 655px;
            left: 41px;
            top: 130px;
            background: rgb(245, 244, 244);
            border-radius: 20px;
            ">
            <c style="position: absolute;
            width: 150px;
            height: 26px;
            left: 95px;
            top: 40px;    
            font-size: 30px;
            font-weight: bold;
            line-height: 26px;  
            color: #F8CE4E;">สุ่มเสร็จสิ้น</c>

            <div class="block" style="top: 100px;"></div>

             <p class="font_moon" style="position: absolute;
                width: 300px;
                height: 86px;
                left: 30px;
                top: 200px; 
                font-size: 22px;  
                font-style : normal;            
                color: #918D8D;">Restaurant name : <?php echo $res_name; ?> <br>
                </p>

                <div class="block" style="top: 280px;"></div>
                

                <c class="font_moon" style="position: absolute;
                width: 280px;
                height: 86px;
                left: 30px;
                top: 400px;            
                color: #918D8D;
                text-overflow: ellipsis;">Food name :<?php echo $food_name; ?> <br><br>
                Price : <?php echo $price_food; ?><br></c>

               
            
            </div>
            
            <form action="Home.php">
             <button class="button" class="font_moon" style="
                position: absolute;
                width: 102.15px;
                height: 37px;
                left: 154px;
                top: 650px;
                border-width: thin;
                background-color: #F8CE4E;
                color: #918D8D;
                ">ยืนยัน</button>
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