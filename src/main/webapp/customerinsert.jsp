<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create account</title>
 
<script src = "CustomerScript.js"></script>
<style>
		body {
            font-family: Arial, sans-serif;
           /* background-color: #f1f1f1;*/
          	background: -webkit-linear-gradient(to right, #CCCCCC, #666666);  /* Chrome 10-25, Safari 5.1-6 */
			background: linear-gradient(to right, #CCCCCC, #666666);
           
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
        input[type="password"]{
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] ,button{
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
             opacity: 0.5;
            
        }

        input[type="submit"],button:hover {
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
		Name <input type = "text" name = "name" value="${param.name}"><br>
		Email <input type = "text" name = "email"value="${param.email}"><br>
		<%-- Display email validation error if it exists --%>
			<% if (request.getAttribute("emailError") != null) { 
				%>
    				<div style="color: red;">
        				<p>${emailError}</p>
    				</div>
				<% } 
			%>
		
		<%-- Display phone number validation error if it exists --%>
			<% if (request.getAttribute("phoneError") != null) { 
				%>
    				<div style="color: red;">
        				<p>${phoneError}</p>
    				</div>
				<% } 
			%>
		
		Phone<input type = "text" name = "phone" value="${param.phone}"maxlength = "10"><br>
		User Name <input type = "text" name = "uid"value="${param.uid}"><br>
		Password<input type = "password" name = "psw"><br>
		 <%-- Display password complexity error if it exists --%>
        	<% if (request.getAttribute("passwordError") != null) { 
        		%>
            		<div style="color: red;">
                		<p>${passwordError}</p>
            		</div>
       			 <% } 
       		%>
		<%-- Display error message if it exists --%>
    		<% if (request.getAttribute("error") != null) {
    			%>
        			<div style="color: red;">
            			<p>${error}</p>
        			</div>
    			<% } 
    		%> 
		
		
		<label for="confirmCheckbox">
      			<input type="checkbox" id="confirmCheckbox"  name="enableButtonCheckbox"onclick="enableButton()">
      				I accept and agree to abide by the terms and conditions outlined. Checking this box confirms my understanding and commitment.
    			</label>
		<p>
			<button type = "submit" name = "submit" value = "Sign Up" id="submitButton"disabled>Register</button>
		</p>		
	</form>
	
	
	
</body>
</html>