<?php include('../config/constants.php'); ?>
<script type="text/css">
    body{
    background-color: #cccccc;
    background-repeat: no-repeat;
    background-size: cover;
    }
</script>

<html>
    <head>
        <title>Login - Plant Order System</title>
        <link rel="stylesheet" href="../css/admin.css">
    </head>

    <body style="background-image: url(../images/realistic-blurred-spring-background_52683-55622.webp);">
        
        <div class="login">
            <h1 class="text-center">Login</h1>
            <br><br>

            <?php 
                if(isset($_SESSION['login']))
                {
                    echo $_SESSION['login'];
                    unset($_SESSION['login']);
                }

                if(isset($_SESSION['no-login-message']))
                {
                    echo $_SESSION['no-login-message'];
                    unset($_SESSION['no-login-message']);
                }
            ?>
            <br><br>

            
            <form action="" method="POST" class="text-center">
            Username: <br>
            <input class="btn" type="text" name="username" placeholder="Enter Username"><br><br>

            Password: <br>
            <input class="btn" type="password" name="password" placeholder="Enter Password"><br><br>

            <input type="submit" name="submit" value="Login" class="btn-primary">
				<a href="../index.php" style="color:blue;text-decoration:none;">User Login</a>

            <br><br>
            </form>
            

        </div>

    </body>
</html>

<?php 

    

    if(isset($_POST['submit']))
    {
       

        $username = $_POST['username'];
        $password = md5($_POST['password']);

        
        $sql = "SELECT * FROM tbl_admin WHERE username='$username' AND password='$password'";

        
        $res = mysqli_query($conn, $sql);

        
        $count = mysqli_num_rows($res);

        if($count==1)
        {
            
            $_SESSION['login'] = "<div class='success'>Login Successful.</div>";
            $_SESSION['user'] = $username; 

            
            header('location:'.SITEURL.'admin/');
        }
        else
        {
    
            $_SESSION['login'] = "<div class='error text-center'>Username or Password did not match.</div>";
            
            header('location:'.SITEURL.'admin/login.php');
        }


    }

?>