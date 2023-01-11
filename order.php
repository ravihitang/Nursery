<?php include('partialsfront/menu.php') ; ?>

<?php 
        
        if(isset($_GET['plant_id']))
        {
            
            $plant_id = $_GET['plant_id'];

        
            $sql = "SELECT * FROM tbl_plant WHERE id=$plant_id";
            
            $res = mysqli_query($conn, $sql);
            
            $count = mysqli_num_rows($res);
        
            if($count==1)
            {
                
                
                $row = mysqli_fetch_assoc($res);

                $title = $row['title'];
                $price = $row['price'];
                $image_name = $row['image_name'];
            }
            else
            {
                
                
                header('location:'.SITEURL);
            }
        }
        else
        {
        
            header('location:'.SITEURL);
        }
    ?>


    <!-- fOOD sEARCH Section Starts Here -->
    <section class="food-search">
        <div class="container">
            
            <h2 class="text-center text-white">Fill this form to confirm your order.</h2>

            <form action="" method="POST" class="order">
                <fieldset>
                    <legend>Selected plant</legend>

                    <div class="food-menu-img">
                    <?php 
                        
                        
                        if($image_name=="")
                        {
                            
                            echo "<div class='error'>Image not Available.</div>";
                        }
                        else
                        {
                            
                            ?>
                            <img src="<?php echo SITEURL; ?>images/food/<?php echo $image_name; ?>" alt="icecream1" class="img-responsive img-curve">
                            <?php
                        }
                    
                    ?>
                
                    </div>
    
                    <div class="food-menu-desc">
                        <h3><?php echo $title; ?></h3>
                        <input type="hidden" name="plant" value="<?php echo $title; ?>">
                        <p class="food-price">Rs.<?php echo $price; ?></p>
                        <input type="hidden" name="price" value="<?php echo $price; ?>">

                        <div class="order-label">Quantity</div>
                        <input type="number" name="qty" class="input-responsive" value="1" required>
                        
                    </div>

                </fieldset>
                
                <fieldset>
                    <legend>Delivery Details</legend>
                    <div class="order-label">Full Name</div>
                    <input type="text" name="full-name" placeholder="E.g. xyz" class="input-responsive" required>

                    <div class="order-label">Phone Number</div>
                    <input type="tel" name="contact" placeholder="E.g. 9148xxxxxx" class="input-responsive" minlength="10" maxlength="10" required>

                    <div class="order-label">Email</div>
                    <input type="email" name="email" placeholder="E.g. xyz@gmail.com" class="input-responsive" required>

                    <div class="order-label">Address</div>
                    <textarea name="address" rows="10" placeholder="E.g. Street, City, Country" class="input-responsive" required></textarea>

                    <input type="submit" name="submit" value="Confirm Order" class="btn btn-primary">
                </fieldset>

            </form>

            <?php 


if(isset($_POST['submit']))
{
    

    $plant = $_POST['plant'];
    $price = $_POST['price'];
    $qty = $_POST['qty'];

    $total = $price * $qty;  

    $order_date = date("Y-m-d h:i:sa"); 

    $status = "Ordered";  

    $customer_name = $_POST['full-name'];
    $customer_contact = $_POST['contact'];
    $customer_email = $_POST['email'];
    $customer_address = $_POST['address'];


  


    $sql2 = "INSERT INTO tbl_order SET 
        plant = '$plant',
        price = $price,
        qty = $qty,
        total = $total,
        order_date = '$order_date',
        status = '$status',
        customer_name = '$customer_name',
        customer_contact = '$customer_contact',
        customer_email = '$customer_email',
        customer_address = '$customer_address'
    ";

    

    
    $res2 = mysqli_query($conn, $sql2);

    
    if($res2==true)
    {
        
        $_SESSION['order'] = "<div class='success text-center'>Plant Ordered Successfully.</div>";
        header('location:'.SITEURL);
    }
    else
    {
        
        $_SESSION['order'] = "<div class='error text-center'>Failed to Order Plant.</div>";
        header('location:'.SITEURL);
    }

}

?>

        </div>
    </section>
    <!-- fOOD sEARCH Section Ends Here -->

 
    <?php include('partialsfront/footer.php') ; ?>