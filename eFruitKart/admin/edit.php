<?php
include "header.php";
include "menu.php";


$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"mydb");
$id=$_GET["id"];
$res=mysqli_query($link,"select * from fruit where id=$id");
while($row=mysqli_fetch_array($res))
{
	$fruit_name=$row["fruit_name"];
	$fruit_price=$row["fruit_price"];
	$fruit_qty=$row["fruit_qty"];
	$fruit_img=$row["fruit_img"];
	$fruit_category=$row["fruit_category"];
	
}
?>
<form name="form1" action=""method="post" enctype="multipart/form-data">
           <div class="grid_10">
<div class="box round first">
<h2>
Edit Item
</h2>
		<div class="block">   

				 <table border="1">
				 <tr>
				 <td colspan="2" align="center">
				 <img src="<?php echo $fruit_img; ?>" height="100" width="200">
				 </td>
				 
				 </tr>
					<tr>
					<td>Fruit Name</td>
					<td><input type="text" name="pnm" value="<?php echo $fruit_name;?>"></td>
					</tr>
					<tr>
					<td>Fruit Price</td>
					<td><input type="text" name="pprice" value="<?php echo $fruit_price;?>" ></td>
					</tr>
					<tr>
					<td>Fruit Quantity</td>
					<td><input type="text" name="pqty" value="<?php echo $fruit_name;?>"></td>
					</tr>
					<tr>
					<td>Fruit Image</td>
					<td><input type="file" name="pimage"></td>
					</tr>
					<tr>
					<td>Fruit Categoty</td>
					<td>
					<select name="pcategory" value="<?php echo $fruit_name;?>">
					<option value="Fresh Fruits">Fruits</option>
					
					</select>
					</td>
					</tr>
					
					<tr>
					<td colspan="2" align="center"><input type="submit" name="submit1" value="update"></td>
				</tr>
					
					
					</table>
					
				
                    </div>
                </div>
            </div>
            <?php
			if(isset($_POST["submit1"]))
			{
				$fnm=$_FILES["pimage"]["name"];
				if($fnm=="")
				{
					mysqli_query($link,"update fruit set fruit_name='$_POST[pnm]',fruit_price='$_POST[pprice]',fruit_qty='$_POST[pqty]',fruit_img='$_POST[pimage]',fruit_category='$_POST[pcategory]' where id=$id");
				}
				else
				{
					$v1=rand(1111,9999);
   $v2=rand(1111,9999);
   
   $v3=$v1.$v2;
   
   $v3=md5($v3);
   
   
   $fnm=$_FILES["pimage"]["name"];
   $dst="./fruitimage/".$v3.$fnm;
   $dst1="fruitimage/".$v3.$fnm;
   move_uploaded_file($_FILES["pimage"]["tmp_name"],$dst);
					mysqli_query($link,"update fruit set fruit_img='$dst1',fruit_name='$_POST[pnm]',fruit_price='$_POST[pprice]',fruit_qty='$_POST[pqty]',fruit_img='$_POST[pimage]',fruit_category='$_POST[pcategory]' where id=$id");
				
				}
			
				?>
			<script type="text/javascript">
			window.location="display_item.php";
			</script>
			
		
       <?php
			}
	   include "footer.php";
	   ?>