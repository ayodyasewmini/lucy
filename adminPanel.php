<?php
include('includes/db.php');

// Fetch products from the database
$result = $conn->query("SELECT * FROM products");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Panel - Product Management</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f7fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .admin-panel {
            width: 70%;
            max-width: 900px;
            margin: 20px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .product-list {
            margin-top: 30px;
        }

        .product-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
            padding: 12px;
            background-color: #fafafa;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .product-item span {
            flex: 1;
            color: #333;
        }

        .product-item button {
            padding: 8px 15px;
            border: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .product-item button:hover {
            background-color: #45a049;
        }

        .add-product-form input,
        .add-product-form select {
            padding: 12px;
            margin: 10px 0;
            width: 100%;
            border-radius: 8px;
            border: 1px solid #ddd;
            font-size: 14px;
        }

        .add-product-form button {
            padding: 12px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        .add-product-form button:hover {
            background-color: #45a049;
        }

        .form-header {
            font-size: 18px;
            margin-bottom: 10px;
            color: #333;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="admin-panel">
        <h2>Admin Panel - Manage Products</h2>

        <!-- Add New Product Form -->
        <div class="form-header">Add New Product</div>
        <form class="add-product-form" action="add_product.php" method="POST" enctype="multipart/form-data">
            <input type="text" name="product_name" placeholder="Product Name" required>
            <input type="number" name="product_price" placeholder="Product Price" required>
            <input type="file" name="product_image" accept="image/*" required>
            <select name="product_category" required>
                <option value="wedding_decor">Wedding Decor</option>
                <option value="gifts_delivery">Gifts and Delivery</option>
                <option value="graduation">Graduation</option>
                <option value="sympathy">Sympathy Flowers</option>
            </select>
            <button type="submit">Add Product</button>
        </form>

        <!-- Product List -->
        <div class="product-list" id="product-list">
            <?php
            // Fetch all products from the database and display them
            while ($row = $result->fetch_assoc()) {
                echo "<div class='product-item'>";
                echo "<span class='product-name'>{$row['name']}</span>";
                echo "<span class='product-price'>\${$row['price']}</span>";

                // Edit form (opens a popup or page)
                echo "<form action='edit_product.php' method='POST' style='display:inline-block;'>";
                echo "<input type='hidden' name='product_id' value='{$row['id']}'>";
                echo "<input type='text' name='product_name' value='{$row['name']}' required>";
                echo "<input type='number' name='product_price' value='{$row['price']}' required>";
                echo "<button type='submit'>Save</button>";
                echo "</form>";

                // Delete button
                echo "<a href='delete_product.php?id={$row['id']}' onclick='return confirm(\"Are you sure?\")'>";
                echo "<button>Delete</button></a>";

                echo "</div>";
            }
            ?>
        </div>
    </div>

</body>
</html>
