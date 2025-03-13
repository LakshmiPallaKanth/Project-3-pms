<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration Form</title>
</head>
<body>
    <form action="reg" method="post">  <!-- Change action to a processing page -->
        <label>Id: </label>  
        <input type="text" name="id" placeholder="Enter Your ID"><br>

        <label>Name: </label>  
        <input type="text" name="name" placeholder="Enter Your Name"><br>

        <label>Email: </label>  
        <input type="email" name="email" placeholder="Enter Your Email"><br>

        <label>Phone: </label>  
        <input type="text" name="phone" placeholder="Enter Your Phone"><br>

        <label>Password: </label>  
        <input type="password" name="password" placeholder="Enter Your Password"><br>

        <input type="submit" value="Submit">
    </form>
    
    <br>
    <br><br><br><br><br><br><br><br><br><br>
    
    
</body>
</html>
