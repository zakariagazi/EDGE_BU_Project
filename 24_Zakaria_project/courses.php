<?php
	include "header.php";
	include "dbconnect.php";

	$sql = "SELECT * FROM products";
	$result = $conn->query($sql);
?>

<h1 align="center">Categorized Fish,Price & Promotions</h1>
<table>
	<tr>
		<th>Sl</th>
		<th>Fish</th>
		<th>Description</th>
		<th>Price</th>
		<th>Stock</th>
		
	</tr>
	<?php
		while($row=$result->fetch_assoc()){
			
			echo "<tr>"; 
			echo "<td>".$row["id"] ."</td>";	
			echo "<td>".$row["name"] ."</td>";	
			echo "<td>". $row["description"]."</td>";	
			echo "<td>". $row["price"]."</td>";	
			echo "<td>". $row["stock"]."</td>";	
			
			echo "</tr>"; 
		}
	
	?>
			
<table>
		
<?php
	include "footer.php";
?>		


