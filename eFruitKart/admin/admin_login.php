<?php
session_start();
$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,'mydb');

?>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    
    
    
    
        <link rel="stylesheet" href="css/style.css">
 
    
    
    
  </head>

  <body>

    <div class="login">
  <div class="login-triangle"></div>
  
  <h2 class="login-header">Log in</h2>

  <form class="login-container"name="form1"action=""method="post">
    <p><input type="text" placeholder="Firstname"required name="Firstname"></p>
    <p><input type="text" placeholder="Lastname"required name="Lastname"></p>
	<p><input type="text" placeholder="Address"required name="Address"></p>
	<p><input type="text" placeholder="Pannumber" required name="Pannumber"></p>
	<p><input type="text" placeholder="Email"required name="email"></p>
    <p><input type="submit" name="submit1"value="Log in"></p>
  </form>
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

   <?php
			if(isset($_POST['submit1']))
			{
				@$Firstname=$_POST['Firstname'];
				@$Lastname=$_POST['Lastname'];
				
				$query = "select * from admin_login where Firstname='$Firstname' and Lastname='$Lastname' ";
				//echo $query;
				$query_run = mysqli_query($link,$query);
				//echo mysql_num_rows($query_run);
				if($query_run)
				{
					if(mysqli_num_rows($query_run)>0)
					{
					$row = mysqli_fetch_array($query_run,MYSQLI_ASSOC);
					$_SESSION["admin"]=$row["Firstname"];
					$_SESSION['Firstname'] = $Firstname;
					$_SESSION['Lastname'] = $Lastname;
					
					header( "Location: add_product.php");
					}
					else
					{
						echo '<script type="text/javascript">alert("No such User exists. Invalid Credentials")</script>';
					}
				}
				else
				{
					echo '<script type="text/javascript">alert("Database Error")</script>';
				}
			}
			else
			{
			}
		?>
		
    
    
  </body>
</html>
