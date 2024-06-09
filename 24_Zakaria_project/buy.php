<?php
	
	include "dbconnect.php";
	
	$sql="SELECT * FROM facility";
	$result=$conn->query($sql);
	
?>

 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sun Kissed Sea-Food - Our Top Rated Fishes</title>
    <link rel="stylesheet" href="style.css">
  
</head>
<body>

    <?php include("header.php"); ?>  <h1>Our Top Rated Fishes</h1>

    <?php
        // Connect to the database
        $server_name = "localhost";
        $user_name = "root";
        $password = "";
        $database_name = "edge_app";
    
        $conn = new mysqli($server_name, $user_name, $password, $database_name);
    
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
    

        // SQL query to select products
        $sql = "SELECT id, name, price, description FROM products";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // Loop through each product
            while($row = $result->fetch_assoc()) {
                echo "<div class='product'>";
                echo "<h2>" . $row["name"] . "</h2>";
                echo "<p>Price: $" . $row["price"] . "</p>";
                echo "<p>" . $row["description"] . "</p>";  echo "<form action='buy.php' method='post'>";  echo "<input type='hidden' name='product_id' value='" . $row["id"] . "'>";
                echo "<input type='submit' value='Buy Now'>";
                echo "</form>";
                echo "</div>";
            }
        } else {
            echo "No products found.";
        }

        $conn->close();
    ?>

    <?php include("footer.php"); ?>  </body>
</html>