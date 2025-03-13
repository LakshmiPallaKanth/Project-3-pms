<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Product</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background: white;
        width: 400px;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        text-align: center;
    }
    h1 {
        color: #007bff;
        margin-bottom: 15px;
    }
    label {
        font-weight: bold;
        display: block;
        text-align: left;
        margin-top: 10px;
    }
    input, textarea {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        background: #007bff;
        color: white;
        border: none;
        cursor: pointer;
        padding: 12px;
        font-size: 16px;
        font-weight: bold;
        margin-top: 15px;
        border-radius: 5px;
        transition: background 0.3s;
    }
    input[type="submit"]:hover {
        background: #0056b3;
    }
    
    #abc {
        background: #007bff;
        color: white;
        border: none;
        cursor: pointer;
        padding: 12px;
        font-size: 16px;
        font-weight: bold;
        margin-top: 15px;
        border-radius: 3px;
        transition: background 0.9s;
    }
    +#abc:hover {
        background: #0056b3;
    }
    
</style>
</head>
<body>
    <div class="container">
        <h1>Create Product</h1>
        <form action="create" method="post">
            <label for="id">Product ID:</label>
            <input type="text" id="id" name="id" required>

            <label for="name">Product Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" required>

            <label for="brand">Brand:</label>
            <input type="text" id="brand" name="brand" required>

            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>

            <input type="submit" value="Create">
            <br>
        </form>
        <br><br><br>
        <a href="allproduct" id="abc">view all product details</a>
         
    </div>
</body>
</html>