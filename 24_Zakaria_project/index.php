<?php
	include "header.php";
	include "dbconnect.php";
	
	$sql="SELECT * FROM facility";
	$result=$conn->query($sql);
	
?>
	<div class="announce">
		<h2> WE ARE OFFERING TYRADITIONAL DRY FISH</h2>
		<p>Dried fish is a type of preserved fish created by removing most of the moisture content through 
			drying methods such as sun drying,
		smoking, and salting. This process inhibits the growth of bacteria and other spoilage organisms,
		 allowing the fish to be stored for extended periods at room temperature. 
		 <DIV class="img"> <img src="Picture4.png" alt="Girl in a jacket" width="330" height="320"> </DIV> 
		 <DIV class="img"> <img src="Picture1.jpg" alt="jacket" width="330" height="320"> </DIV>
		 <DIV class="img"> <img src="Picture5.jpg" alt="Girl " width="330" height="320"> </DIV>
		 <DIV class="img"> <img src="Picture7.png" alt="Girl " width="330" height="320"> </DIV>
		 <DIV class="img"> <img src="Picture3.png" alt="Girl " width="330" height="320"> </DIV>
		 <DIV class="img"> <img src="Picture11.png" alt="Girl " width="330" height="320"> </DIV></p>

		</p>
		<h2>Our Services:</h2>
		<ul>
		<?php
			while($row=$result->fetch_assoc()){
				echo "<li>".$row["description"]."</li>";
			}
		?>
		
		</ul>
	</div>
		
<?php
	include "footer.php";
?>

