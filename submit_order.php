<?php
// Change this to your database
$servername = "localhost";
$username = "root";
$password = "root";
$database = "flower"; 

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get POST values
$product = $_POST['product_name'];
$name = $_POST['customer_name'];
$phone = $_POST['customer_phone'];
$email = $_POST['customer_email'];
$address = $_POST['customer_address'];
$comments = $_POST['customer_comments'];

// Insert into database
$sql = "INSERT INTO orders (product_name, customer_name, customer_phone, customer_email, customer_address, customer_comments)
        VALUES (?, ?, ?, ?, ?, ?)";

$stmt = $conn->prepare($sql);
$stmt->bind_param("ssssss", $product, $name, $phone, $email, $address, $comments);

if ($stmt->execute()) {
    echo "<script>alert('Order placed successfully!'); window.location.href='index.html';</script>";
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
