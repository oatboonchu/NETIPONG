<?php
    session_start();

    $server = "localhost" ;
    $username = "root" ; 
    $password = "root" ;
    $dbname = "fooddom" ;

    $connect = new mysqli($server,$username,$password,$dbname);

    if($connect->connect_error){
        die("can't connect");
    }
   
    if(isset($_POST['username'])&&$_POST['password']&&$_POST['confirmpassword']&&$_POST['fname']&&$_POST['lname']&&$_POST['phone']){
        $user = $_POST['username'] ;
        $pwd = $_POST['password'] ;
        $cpwd = $_POST['confirmpassword'];
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $phone = $_POST['phone'];
    }
    
    
    
    
    if(!empty($user)&&!empty($pwd)&&!empty($cpwd)&&!empty($fname)&&!empty($lname)&&!empty($phone)){
        $UserSame = true;
        $sql = "SELECT username From member";
        $result = $connect->query($sql);

        while($row = $result->fetch_assoc()) {
            // echo "Username: " . $row["username"]. "<br>";
            // echo "user: " . $user. "<br>";
            if ($row["username"] === $user) {
                // $UserSame = $row["username"] === $user;
                $UserSame = false;
                echo $UserSame."<br>" ;
                break;
            }
            

          }
            // echo strcmp($row["username"],$user);
            
        if($UserSame == true){
            $mpass = md5($pwd);
            $insert = "INSERT INTO member (username, password, Fname, Lname, phone)
            VALUES ('$user', '$mpass', '$fname', '$lname', '$phone')";                 
            mysqli_query($connect, $insert);
            header("Location:login.php");
        }
        else {
            $error = true ;
            // header("Location:register.php");
        }
    }
    

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        @import url("mystyle.css"); 
   </style>
   <link href="https://fonts.googleapis.com/css2?family=Kanit:wght@200&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</script>

</head>
<body style="background-color: gray;">
  
        <div class="page" style="margin-left: 40%;">
            <img src="img/user.png" style="
            position: absolute;
            width: 306px;
            height: 135px;
            left: 59px;
            top: 100px;">


            <img src="img/logo.png" style="position: absolute;
            width: 72px;
            height: 57.93px;
            left: 325px;
            top: 36px;
            ">

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
                        line-height: 18px;
                        ">Back
                    </div>
            </a>

    <h1 class="font_m" style="position:absolute ; left: 160px; top: 230px; color:#FFFAFA;"  >Register</h1>
                <form action="register.php" method="POST" >
                    <input type="username" name="username" placeholder="Username" id="user"
                        class="ip"
                        style="position: absolute;
                        left: 87px;
                        top: 315px;
                        background: #FFFFFF;
                        box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.25);
                        font-family: 'Kanit';
                        text-align: center;
                        "
                        required
                        pattern="[a-zA-Z0-9-]{4,16}"
                        maxlength="16"
                        oninvalid="this.setCustomValidity('Please Enter your username [4-16 Charaters and numbers]')"
                        >

        
                    <input type="password" name="password" placeholder="Password" id="Password"
                        class="ip"
                        style="position: absolute;
                        left: 87px;
                        top: 386px;
                        background: #FFFFFF;
                        box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.25);
                        font-family: 'Kanit';
                        text-align: center;">


                    <input type="password" name="confirmpassword" placeholder="Confirm Password" id="Confirm_password"
                        class="ip"
                        style="position: absolute;
                        left: 87px;
                        top: 457px;
                        background: #FFFFFF;
                        box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.25);
                        font-family: 'Kanit';
                        text-align: center;">


                    <input type="text"  name="fname" placeholder="Firstname" id="Fname"
                        class="ip"
                        style="position: absolute;
                        left: 87px;
                        top: 528px;
                        background: #FFFFFF;
                        box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.25);
                        font-family: 'Kanit';
                        text-align: center;"

                        required
                        pattern="[a-zA-Z0-9-]{4,16}"
                        maxlength="16">

        
                    <input type="text" name="lname" placeholder="Lastname" id="Lname"
                        class="ip"
                        style="position: absolute;
                        left: 87px;
                        top: 599px;
                        background: #FFFFFF;
                        box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.25);
                        font-family: 'Kanit';
                        text-align: center;"
                        required
                        pattern="[a-zA-Z0-9-]{4,16}"
                        maxlength="16">


                    <input type="tel" name="phone" placeholder="Phone" id="Phone"
                        class="ip"
                        style="position: absolute;
                        left: 87px;
                        top: 670px;
                        background: #FFFFFF;
                        box-shadow: inset 0px 4px 4px rgba(0, 0, 0, 0.25);
                        font-family: 'Kanit';
                        text-align: center;
                        "
                        required
                        pattern="[0-9]{3}-[0-9]{7}"
                        maxlength="11"
                        oninvalid="this.setCustomValidity('Please Enter your phone [08x-xxxxxxx]')"
                        >
        
                    <button type="submit" class="button"
                        style="position: absolute;
                        left: 108px;
                        top: 756px;
                        background: #FFFFFF;
                        box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
                        border-width: thin;">Comfirm
                    </button>
                </form>
            
    
        
    </div> 
               
    </body>
    <script>
        var password = document.getElementById("Password")
            , confirm_password = document.getElementById("Confirm_password");

            function validatePassword(){
            if(password.value != confirm_password.value) {
                confirm_password.setCustomValidity("Passwords Don't Match");
            } else {
                confirm_password.setCustomValidity('');
            }
            }

            password.onchange = validatePassword;
            confirm_password.onkeyup = validatePassword;

            
        <?php if($error) { ?>
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'User already use!',
                background : '#E7E7E7',
                backdrop: 'rgba(100,0,0,0.4)' })
        <?php }?>
               
    </script>
    
</html>