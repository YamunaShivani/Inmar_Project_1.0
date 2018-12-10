<?php
$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"mydb");
$id=$_GET["id"];

$res=mysqli_query($link,"select * from fruit where id=$id");
while($row=mysqli_fetch_array($res))
{
$img=$row["fruit_img"];
}
unlink($img);
mysqli_query($link,"delete from fruit where id=$id");
?>


<script type="text/javascript">
window.location="display_item.php";
</script>