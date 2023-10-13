<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create account</title>
<style>
body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
        }

        form {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
            border-radius: 5px;
             background: #fff;
 			 box-sizing: border-box;
 
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .headers{
        	text-align:center;
        	font-family:cursive;
        }
  
</style>
</head>
<body>	<div class = "headers">
		<h1>Join Puriton Family</h1>
		<h2>Sign Up Now</h2>
		</div>
	<form action = "insert" method = "post">
		Name <input type = "text" name = "name"><br>
		Email <input type = "text" name = "email"><br>
		Phone<input type = "text" name = "phone"><br>
		User Name <input type = "text" name = "uid"><br>
		Password <input type = "password" name = "psw"><br>
		
		<input type = "submit" name = "submit" value = "Sign Up">		
	</form>
	
	
	
</body>
</html>