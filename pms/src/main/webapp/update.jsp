<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Product Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        padding: 50px;
    }

    h1 {
        color: #333;
    }

    form {
        background: #fff;
        padding: 20px;
        width: 300px;
        margin: auto;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }

    input {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    button {
        background-color: #28a745;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    button:hover {
        background-color: #218838;
        
    }
</style>
</head>
<body>

     <h1>Update Product Details</h1>
     <form action="update">
        <input type="text" value="${id}" name="id" placeholder="Update ID">
        <input type="text" value="${name}" name="name" placeholder="Update Name">
        <input type="text" value="${price}" name="price" placeholder="Update Price">
        <input type="text" value="${brand}" name="brand" placeholder="Update Brand">
        <input type="text" value="${description}" name="description" placeholder="Update Description">
        <button type="submit">Update</button>
     </form>

</body>
</html>
