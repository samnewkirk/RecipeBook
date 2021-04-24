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
		if(isset($_POST['ol_fash'])){
			$name = "Old Fashioned";
		}elseif(isset($_POST['toronto'])){
			$name = "Toronto";
		}elseif(isset($_POST['marg'])){
			$name = "Margarita";
		}elseif(isset($_POST['mai'])){
			$name = "Mai Tai";
		}elseif(isset($_POST['ameri'])){
			$name = "Americano";
		}elseif(isset($_POST['corpse'])){
			$name = "Corpse Reviver";
		}elseif(isset($_POST['gt'])){
			$name = "Gin & Tonic";
		}elseif(isset($_POST['french'])){
			$name = "French 75";
		}elseif(isset($_POST['pen'])){
			$name = "Penicillin";
		}elseif(isset($_POST['avi'])){
			$name = "Aviation no.1";
		}
		$sql = "SELECT * FROM cocktail WHERE name LIKE '%$name%'"; 
		$result = mysqli_query($conn, $sql);
		$queryResult = mysqli_num_rows($result);
		if($queryResult > 0){
			while($row = mysqli_fetch_assoc($result)){
				//echo "<table><tr><td>" .$row["name"]."</td><td>".$row["recipe"]."</td><td>" .$row["type"]. "</td></tr>";
				echo "<h3><br>".$row["name"]."<br>".$row["recipe"]."<br>" .$row["type"]."</h3><br>";

			}//while
		
		echo "</table>";

		}else{
			echo "0 results";
		}

	}//end 		

	$conn->close();
?>