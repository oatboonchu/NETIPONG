<?php 
    session_start();
?>
<!DOCTYPE html>
<html>
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
            left: 29px;
            top: 289px;">
            <form name="auto_next_page" action="login_or_register.php"></form>
        <script >
            setTimeout(function(){document.auto_next_page.submit()}, 1000)
        </script>
    </div>
</body>