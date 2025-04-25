// Function to handle "Order Now" button click
function orderNow(productName) {
    // Redirect to order form with the product name as a query parameter
    const orderFormURL = `order_form.html?product=${encodeURIComponent(productName)}`;
    window.location.href = orderFormURL;
}
