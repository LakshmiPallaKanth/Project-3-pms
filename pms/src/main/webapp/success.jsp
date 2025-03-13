<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        padding: 50px;
    }

    h1 {
        color: #28a745;
        font-size: 24px;
        margin-bottom: 30px;
    }

    a {
        display: inline-block;
        background-color: #007bff;
        color: white;
        padding: 12px 20px;
        text-decoration: none;
        font-size: 16px;
        border-radius: 5px;
        transition: background-color 0.3s ease, transform 0.2s;
    }

    a:hover {
        background-color: #0056b3;
        transform: scale(1.05);
    }

    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 20px;
        margin-top: 50px;
    }
</style>
</head>
<body>

    <h1>Product Detailed Successfully</h1>

    <div class="container">
        <a href="index.jsp">Create Product</a>
        <a href="allproduct">View All Product Details</a>
    </div>

</body>
</html>
