<?php

	$server = 'localhost';
	$username = 'root';
	$password = ''; 
	$database = 'recipes';

$conn = new mysqli($server, $username, $password, $database);
	if($conn->connect_error){
		die("connection failed: " . $conn->connect_error);
	}
	
	$name = $_POST['name'];
	$type = $_POST['type'];
	$recipe = $_POST['rec'];


	$sql = "INSERT INTO food (name, type, recipe)
			VALUES ('$name', '$type', '$recipe')"; 

	if($conn->query($sql) === TRUE){
		echo "New record created successfully";
	}else{
		echo "Error" .$conn->error;
	}

$conn->close();
?>