<?php
include "header.php";
include "menu.php";


$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"mydb");
?>
           <div class="grid_10">
<div class="box round first">
<h2>
DISPLAY ITEMS
</h2>
		<div class="block">   
<?php
$res=mysqli_query($link,"select * from fruit");
echo "<table border='2'>";
echo "<tr>";
echo "<th>"; echo"fruit img";echo"</th>";
echo "<th>"; echo"fruit name";echo"</th>";
echo "<th>"; echo"fruit price";echo"</th>";
echo "<th>"; echo"fruit quantity";echo"</th>";
echo "<th>"; echo"fruit category";echo"</th>";
echo "<th>"; echo"delete";echo"</th>";
echo "<th>"; echo"edit";echo"</th>";
echo "</tr>";
while($row=mysqli_fetch_array($res))
{
		echo "<tr>";	
echo"<td>"; ?><img src="<?php echo $row["fruit_img"];?>"height="100"width="100"><?php echo "</td>";
echo"<td>"; echo $row["fruit_name"]; echo "</td>";
echo"<td>"; echo $row["fruit_price"]; echo "</td>";
echo"<td>"; echo $row["fruit_qty"]; echo "</td>";
echo"<td>"; echo $row["fruit_category"]; echo "</td>";
echo"<td>"; ?><a href="delete.php?id=<?php echo $row["id"];?>">delete</a><?php echo "</td>";
echo"<td>"; ?><a href="edit.php?id=<?php echo $row["id"];?>">edit</a><?php echo "</td>";


		
		echo "</tr>";		
			
}
echo "</table>";
?>			
                </div>
            </div>
            
       <?php
	   include "footer.php";
	   ?>