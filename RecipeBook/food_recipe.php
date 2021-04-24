<?php

	$server = 'localhost';
	$username = 'root';
	$password = ''; 
	$database = 'recipes'; 

	$conn = new mysqli($server, $username, $password, $database);

	if($conn->connect_error){
		die("connection failed: " . $conn->connect_error);
	}//connection check


	if ($_SERVER['REQUEST_METHOD'] == 'POST'){
		$name = '';
		
		if(isset($_POST['c_salad'])){
			$name = "Chicken Salad";
		}elseif(isset($_POST['tantan'])){
			$name = "Tantanmen Ramen";
		}elseif(isset($_POST['taco'])){
			$name = "Taco Meat";
		}elseif(isset($_POST['curry'])){
			$name = "Thai Curry";
		}elseif(isset($_POST['cookie'])){
			$name = "Chocolate Chip Cookies";
		}elseif(isset($_POST['rib'])){
			$name = "Pan Seared Ribeye";
		}elseif(isset($_POST['ench'])){
			$name = "Chicken Enchiladas";
		}elseif(isset($_POST['pie'])){
			$name = "Shepard's Pie";
		}elseif(isset($_POST['bol'])){
			$name = "Bolognese";
		}elseif(isset($_POST['sal'])){
			$name = "Oven Baked Salmon";
		}
		
		$sql = "SELECT * FROM food WHERE name LIKE '%$name%'"; 
		$result = mysqli_query($conn, $sql);
		$queryResult = mysqli_num_rows($result);
		if($queryResult > 0){
			while($row = mysqli_fetch_assoc($result)){
				echo "<h3><br>".$row["name"]."<br>".$row["recipe"]."<br></h3>";

			}//while
			
		echo "<br><b> Pairing Suggestions:</b><br>";
		
		$cocktail = "SELECT cocktail_id FROM food WHERE name LIKE '%$name%'";
		$c1 = mysqli_query($conn, $cocktail);
		while($row = mysqli_fetch_assoc($c1)){
			$cocktail_id = $row["cocktail_id"];	
		}
		$sql_cocktail = "SELECT * FROM cocktail WHERE cocktail_id LIKE '%$cocktail_id%'";
		$c2 = mysqli_query($conn, $sql_cocktail);
		while($row = mysqli_fetch_assoc($c2)){
			echo "<br> COCKTAIL: ".$row["name"]." ".$row["spirit"]." ".$row["recipe"]." ".$row["type"]."<br>";	
		}
//////////////////////////////////////////////////////////////////////////////////////////////			
		$wine = "SELECT wine_id FROM food WHERE name LIKE '%$name%'";
		$w1 = mysqli_query($conn, $wine);
		while($row = mysqli_fetch_assoc($w1)){
			$wine_id = $row["wine_id"];	
		}
		$sql_wine = "SELECT * FROM wine WHERE wine_id LIKE '%$wine_id%'";
		$w2 = mysqli_query($conn, $sql_wine);
		while($row = mysqli_fetch_assoc($w2)){
			echo "<br> WINE: ".$row["type"]." ".$row["grape"]." ".$row["region"]."<br>";	
		}
//////////////////////////////////////////////////////////////////////////////////////////////		
		$beer = "SELECT beer_id FROM food WHERE name LIKE '%$name%'";
		$b1 = mysqli_query($conn, $beer);
		while($row = mysqli_fetch_assoc($b1)){
			$beer_id = $row["beer_id"];	
		}
		$sql_beer = "SELECT * FROM beer WHERE beer_id LIKE '%$beer_id%'";
		$b2 = mysqli_query($conn, $sql_beer);
		while($row = mysqli_fetch_assoc($b2)){
			echo "<br> BEER: ".$row["type"]."<br>";	
		}
		
		echo "</table>";

		}else{
			echo "0 results";
		}

	}//end 		

	$conn->close();
?>
