<?php
// login.php

$servername = "localhost";
$username = "root";
$password = "root";
$database = "flower"; // your actual database name

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get form data
$email = $_POST['email'];
$password = $_POST['password'];

// Query the database for the provided email and password
$sql = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
$result = $conn->query($sql);

// Check if a match was found
if ($result->num_rows == 1) {
    // Login successful, redirect to admin panel
    header("Location: adminPanel.html");
    exit();
} else {
    // Invalid credentials
    echo "<script>alert('Invalid email or password!'); window.location.href = 'login.html';</script>";
}

$conn->close();
?>
