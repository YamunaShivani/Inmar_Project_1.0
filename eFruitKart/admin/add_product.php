<?php

include "header.php";
include "menu.php";
?>
<?php
$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"mydb");
?>
      
        <div class="grid_10">
            <div class="box round first">
                <h2>
                   Add Fruits </h2>
                <div class="block">
                    
					<form name="form1" action="" method="post" enctype="multipart/form-data">
					<table border="1">
					<tr>
					<td>Fruit Name</td>
					<td><input type="text" name="pnm" ></td>
					</tr>
					<tr>
					<td>Fruit Price</td>
					<td><input type="text" name="pprice" ></td>
					</tr>
					<tr>
					<td>Fruit Quantity</td>
					<td><input type="text" name="pqty" ></td>
					</tr>
					<tr>
					<td>Fruit Image</td>
					<td><input type="file" name="pimage"></td>
					</tr>
					<tr>
					<td>Fruit Categoty</td>
					<td>
					<select name="pcategory">
					<option value="Fresh Fruits">Fruits</option>
					
					</select>
					</td>
					</tr>
					
					<tr>
					<td colspan="2" align="center"><input type="submit" name="submit1" value="upload"></td>
				</tr>
					
					
					</table>
					
					
					</form>

<?php
if(isset($_POST["submit1"]))
{
   $v1=rand(1111,9999);
   $v2=rand(1111,9999);
   
   $v3=$v1.$v2;
   
   $v3=md5($v3);
   
   
   $fnm=$_FILES["pimage"]["name"];
   $dst="./fruitimage/".$v3.$fnm;
   $dst1="fruitimage/".$v3.$fnm;
   move_uploaded_file($_FILES["pimage"]["tmp_name"],$dst);



mysqli_query($link,"insert into fruit values('','$_POST[pnm]',$_POST[pprice],$_POST[pqty],'$dst1','$_POST[pcategory]')");


}

?>					
					
					
                </div>
            </div>
<?php
include "footer.php";  
  
?>         
     