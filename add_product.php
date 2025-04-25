<?php
include('includes/db.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get form data
    $productName = $_POST['product_name'];
    $productPrice = $_POST['product_price'];
    $productCategory = $_POST['product_category'];

    // Handle image upload
    if (isset($_FILES['product_image'])) {
        $targetDir = "uploads/";
        $fileName = basename($_FILES["product_image"]["name"]);
        $targetFilePath = $targetDir . $fileName;
        $fileType = strtolower(pathinfo($targetFilePath, PATHINFO_EXTENSION));

        // Check if the file is an actual image (Optional but good practice)
        $check = getimagesize($_FILES["product_image"]["tmp_name"]);
        if($check !== false) {
            // Upload file to server
            if (move_uploaded_file($_FILES["product_image"]["tmp_name"], $targetFilePath)) {
                // Prepare SQL query to insert data
                $sql = "INSERT INTO products (name, price, category, image) VALUES ('$productName', '$productPrice', '$productCategory', '$targetFilePath')";

                if ($conn->query($sql) === TRUE) {
                    // Redirect to admin panel after successful insertion
                    header("Location: adminPanel.php");
                    exit();
                } else {
                    echo "Error: " . $sql . "<br>" . $conn->error;
                }
            } else {
                echo "Sorry, there was an error uploading your file.";
            }
        } else {
            echo "The uploaded file is not an image.";
        }
    }
}
?>
