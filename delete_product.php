<?php
include('includes/db.php');

if (isset($_GET['id'])) {
    $product_id = intval($_GET['id']);
    $sql = "DELETE FROM products WHERE id = $product_id";
    if ($conn->query($sql)) {
        header("Location: adminPanel.php?msg=Product+deleted");
        exit();
    } else {
        echo "Error deleting product: " . $conn->error;
    }
}
?>
