<?php include('partials/menu.php') ; ?>

    <div class="main-content">
    <div class="wrapper">
                   <h1>Add Admin</h1>

                   <br><br>
              
                   <?php
                            if(isset($_SESSION['add']))
                            {
                                echo $_SESSION['add'];
                                unset($_SESSION['add']);
                            }
                     ?>

                      <form action=""  method="POST">

                            <table class="tbl-30">  
                                <tr>
                                        <td>Full Name:</td>
                                        <td>
                                            <input type="text" name="full_name" placeholder="Enter Your Name ">
                                        </td>
                                </tr>

                                <tr>
                                        <td>Usename:</td>
                                        <td>
                                            <input type="text" name="username" placeholder="Your Username ">
                                        </td>
                                </tr>

                                <tr>
                                        <td>Password:</td>
                                        <td>
                                            <input type="password" name="password" placeholder="Your Password "minlength="8" maxlength="8">
                                        </td>
                                </tr>

                                <tr>
                                        <td colspan="2">
                                            <input type="submit" name="submit" value="Add Admin"  class="btn-secondary">
                                        </td>
                                </tr>

                               </table>     

                      </form>


    </div>             
    </div>    

<?php include('partials/footer.php'); ?>


<?php




               if(isset($_POST['submit']))
               {
                    //echo   "Button Clicked";
                   
                   
                   
                    $full_name = $_POST['full_name'];
                    $username = $_POST['username'];
                    $password = md5($_POST['password']);

                    
                    $sql ="INSERT INTO tbl_admin    SET
                           full_name='$full_name',
                           username= '$username',
                           password='$password'
                     ";


                     $res = mysqli_query($conn,$sql) or die(mysqli_error());
                     

                     if($res==TRUE)
                     {
                                   //echo"Data Inserted";


                                   $_SESSION['add'] = "<div class='success'>Admin Added Succesfully.</div>";


                                   header("location:".SITEURL.'admin/manageadmin.php');
                     }
                     else
                     {
                                  //echo"Failed To Insert Data";
                                
                                
                                  $_SESSION['add'] ="<div class='eror'>Failed To Add Admins.</div>" ;

                                   header("location:".SITEURL.'admin/addadmin.php');
                     }

               }  

?>
























