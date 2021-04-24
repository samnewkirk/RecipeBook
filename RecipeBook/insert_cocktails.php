<?php

$server = "localhost";
$username = "snewkirk1";
$password = "snewkirk1";
$db = "snewkirk1";

$conn = new mysqli($server, $username, $password, $db);
	if($conn->connect_error){
		die("connection failed: " . $conn->connect_error);
	}

$sql = "INSERT INTO cocktails(Name, Type, Spirit, Difficulty, Recipe)
VALUES
('Old Fashioned', 'Stir', 'Rye', '3', '2 dashes Angostura bitters, 1 dashes Orange bitters, barspoon simple syrup, 2oz Rye Whiskey'),
('Toronto', 'Stir', 'Rye', '4','2 dashes Angostura bitters, 2 dashes Orange bitters, barspoon demerara, 2oz Rye Whiskey'),
('Margarita', 'Shake', 'Tequila', '3','.25oz Agave, .75oz fresh lime juice, .5oz Contreau, 1.5oz Reposado Tequila'),
('Dark and Stormy', 'Stir', 'Rum', '2','.5oz fresh lime juice, 1.5oz Dark Rum, top with unfiltered Ginger Beer'),
('Americano', 'Stir', 'Vermouth', '2','1oz Carpano (Sweet Vermouth), 1oz Campari (Dry Vermouth), top with seltzer water'),
('Negroni', 'Stir', 'Gin', '4','1oz Carpano, 1oz Campari, 1oz Dry Gin'),
('Aviation', 'Shake', 'Gin', '4','barspoon Creme de Violet, .75oz fresh lemon juice, .5oz Maraschino Liqueur, 1.5oz Avaition Gin')
";

if($conn->query($sql) === TRUE){
	echo "New record created successfully";
}else{
	echo "Error" .$conn->error;
}

$conn->close();
?>