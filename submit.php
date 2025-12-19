<?php
$servername = "mysql";   // Kubernetes Service name
$username = "root";
$password = "password";
$dbname = "testdb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Read form values
$name  = $_POST['name'];
$email = $_POST['email'];
$age   = $_POST['age'];

// Insert into DB
$sql = "INSERT INTO users (name, email, age) VALUES ('$name', '$email', $age)";

if ($conn->query($sql) === TRUE) {
    echo "<h2 style='color:green;'>User registered successfully</h2>";
    echo "<a href='index.html'>Go Back</a>";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>

