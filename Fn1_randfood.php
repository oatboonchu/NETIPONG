<?php 
    session_start();

    $server = "localhost" ;
    $username = "root" ; 
    $password = "root" ;
    $dbname = "fooddom" ;

    $connect = new mysqli($server,$username,$password,$dbname);

    if(isset($_POST['price'])&&$_POST['numP']){
        $_SESSION['price'] = $_POST['price'];
        $_SESSION['numP'] = $_POST['numP'];
        // echo $_SESSION['price']."      ".$_SESSION['numP'];
        // echo $_SESSION['resname'];
    }
    $error = false ;

    $rangeprice = $_POST['price'] ;
    $resname = $_SESSION['resname'] ;
    $rp = $connect->query(" SELECT ref_range.res_name , rangeprice.* 
                            FROM ref_range
                            LEFT JOIN rangeprice
                            ON ref_range.number_range = rangeprice.number_range AND ref_range.res_name ='$resname' ") ;

    while($row2 = $rp->fetch_assoc()){
        $number_range = $row2['price_range'] ;
        // echo $number_range." = ".$rangeprice."<br>";
        if($number_range == $rangeprice){
            // echo "same";
            $error = false ;
            break;
            
        }else{
            // echo "not same <br>";
            $error = true ;
        }
    }



    if(isset($_SESSION['resname'])){
        $resname = $_SESSION['resname'];
        $op_time = $connect->query("SELECT * FROM restaurant WHERE name='$resname' ") ;
        $row = $op_time->fetch_assoc();
        $time = $row['open_close'];
        
        $op_chair = $connect->query("SELECT SUM(chair) as total_chair FROM tables WHERE res_name = '$resname' ");
        while($row1 = $op_chair->fetch_assoc()){
            $chair = $row1['total_chair'];
        }
    }

?>

<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@200&display=swap" rel="stylesheet">
    <style>
        @import url("mystyle.css");
        
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

            <div style=" position: absolute;
            width: 366px;
            height: 347px;
            left: 24px;
            top: 116px;         
            background: #FFFFFF;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            border-radius: 30px;"></div>
         
         <form action="Fn1_Result.php" >
            <c class="font_moon"
            style="position: absolute;
            width: 250px;
            height: 39px;
            left: 143px;
            top: 163px;           
            color: #F8CE4E;
            font-size: 35px">สุ่มอาหาร</c>

                

                <div style="position: absolute;
                width: 335px;
                height: 123px;
                left: 43px;
                top: 220px;
                background: rgb(245, 244, 244);
                border-radius: 20px;
                font-family: 'Kanit';
                            font-size: 18px;
                            line-height: 26px;
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
                ">

                    <div style=" 
                    width: 90px;
                    height: 90px;
                    margin-top :15px;
                    margin-left :15px;
                    background: #F8CE4E;
                    border-radius: 20px;
                    box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
                    float: left;"></div>
                
                
                <c "
                style="
                width: 198px;
                height: 86px;
                margin-top :20px;
                margin-left :25px;
                color: #918D8D;
                float: right;
                ">
                Name :<?php echo $resname;?> <br>
                Time : <?php echo $time;?><br>
                chair :<?php echo $chair;?><br> </c>
                </div>

                <button class="button" style="
                    position: absolute;
                    width: 102.15px;
                    height: 37px;
                    left: 209px;
                    top: 390px;
                    background-color: #F8CE4E;
                    color: #918D8D;
                    border-width: thin;"
                    ">ยืนยัน</button>
                </form>

                <form action="Fn1_price.php" >
                    <button class="button" style="
                        position: absolute;
                        width: 102.15px;
                        height: 37px;
                        left: 102px;
                        top: 390px;
                        background-color: #F8CE4E;
                        color: #918D8D;
                        border-width: thin;"
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

    <script>
         <?php if($error) { ?>
        
        Swal.fire({
            icon: 'error',
            title: 'Invalid range price',
            text: 'please choose range price again!',
            background : '#E7E7E7',
            backdrop: 'rgba(100,0,0,0.4)' ,
            confirmButtonText: 'OK'
            }). then(function(result){
            window.location = "Fn1_price.php";
         })
            
    <?php }?>
    </script>
</body>