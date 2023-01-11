<?php

               include('../config/constants.php');
      
              $id=$_GET['id'];


             $sql = "DELETE FROM tbl_admin WHERE id=$id ";

  
             
         
                $res= mysqli_query($conn,$sql);


                if($res==TRUE)
                {

                    //echo "Admin Deleted";

                    $_SESSION['delete'] = "<div class='success'>Admin Deleted Succesfully.</div>";

                    header('location:'.SITEURL.'admin/manageadmin.php');
                    
                }
                else
                {
                   //echo "Failed To Delete Admin";

                   $_SESSION['delete'] ="<div class='error'>Failed To Delete Admin.Try Again Later.</div>";
                   header('location:'.SITEURL.'admin/manageadmin.php');
                }



?>