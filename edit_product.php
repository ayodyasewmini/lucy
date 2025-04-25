<?php
include('includes/db.php');

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $id = intval($_POST['product_id']);
    $name = $_POST['product_name'];
    $price = $_POST['product_price'];

    $sql = "UPDATE products SET name=?, price=? WHERE id=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sdi", $name, $price, $id);

    if ($stmt->execute()) {
        header("Location: adminPanel.php?msg=Product+updated");
        exit();
    } else {
        echo "Update failed: " . $stmt->error;
    }
}
?>
