<?php
    session_start();
    
    $error = false;
    $error_message = "";

    $server = "localhost" ;
    $username = "root" ; 
    $password = "root" ;
    $dbname = "fooddom" ;

    $connect = new mysqli($server,$username,$password,$dbname);

    if($connect->connect_error){
        die("can't connect");
    }
    
    if(isset($_POST['username'])&&$_POST['password']){
        $user = $_POST['username'] ;
        $pwd = md5($_POST['password']) ;

        // echo $_POST['username']."  ".$_POST['password'];

        $cstate = $connect->prepare("SELECT username From member WHERE username = ? AND password = ?");
        $cstate->bind_param('ss',$user,$pwd);
        $cstate->execute();
        $result = $cstate->get_result();

        if($uid = $result->fetch_assoc()){
            $_SESSION['uid'] = $uid['id'];
            $_SESSION['username'] = $_POST['username'];
            header('Location: Home.php');
        }
        else{
            $error = true;
            $error_message = "Fuck DataBase password or username";
         }
    } 
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@200&display=swap" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        @import url("mystyle.css");
    </style>
    <title>project</title>
</head>
<body style="background-color: gray;">
<div>
    <div class="page" style="margin-left: 40%; top : 8px; left : 2px;">
        <a href="login_or_register.php">
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
        
        <img src="img/user.png" style="
            position: absolute;
            width: 306px;
            height: 135px;
            left: 59px;
            top: 159px;">
        

        <?php if(!isset($_SESSION['username'])){ ?>
        
        <form action="login.php" method="post">
            <h1 class="font_m" style="position:absolute ;
             left: 164px; 
             top: 305px; 
             color:#FFFAFA;
             
             "  >Login</h1>

            <input  type="text" placeholder="Username"
            style="position:absolute ; 
            left: 91px; 
            top: 377px;
            text-align: center;" 
            
            class="ip" id="username" name="username">

            <input type="password" placeholder="Password"
            style="position:absolute ; 
            left: 91px; 
            top: 448px;
            text-align: center;"
            
            class="ip" id="password" name="password">

            <button class="button" type="submit" 
            style="position:absolute ; left: 107px; top: 555px;
            width: 212px; height: 48px;
            border-width: thin;"
            ><h3 style="color: #F8CE4E">Login</h3></button>

        </form>
        <?php }else { ?>
            <h1>Sucess!!</h1>
            <a href="logout.php">log out</a>
        <?php }?>
        
    </div>
</div> 
</body>
        
    
                
        
    

<script>
    <?php if($error) { ?>
        swal("Error", "<?php echo $error_message; ?>", "error");
    <?php } ?>
</script>

</html>
