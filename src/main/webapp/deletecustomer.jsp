<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="header-footer.css">
<title>Account Delete</title>
<style>
		form {
  max-width: 400px;
  margin: 20px auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background-color: #f4f4f4;
}

form input[type="text"],
form input[type="password"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
  box-sizing: border-box;
}

form input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 15px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

form input[type="submit"]:hover {
  background-color: #45a049;
}
h1{	
	text-align:center;
	font-family:cursive;
}
</style>
</head>
<body>


		
	 <nav>
       <div class="logo">
           <img src="images\W - Tech.png" alt="Company Logo">
       </div>
       
           <div class="menu">
               <a class="menu-item" href="#">Home</a>
               <a class="menu-item" href="#">Find Rooms</a>
               <a class="menu-item" href="#">About Us</a>
           </div>
       
       <div class="signup-login">
           <a class="login-button" href="php\loginUser.php">Login</a>
           <a class="signup-button" href="php\SignUp.php">Signup</a>
       </div>
    </nav>







	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email =  request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String Password = request.getParameter("pass");
		
	%>
	<h1>Delete Your Account...</h1>
	
	<form action = "delete" method = "post">
	Customer ID<input type = "text" name = "cusid" value = "<%=id %>"readonly><br>
	Name<input type = "text" name = "name" value = "<%=name%>" readonly><br>
	Email<input type = "text" name = "email" value = "<%=email%>"readonly><br>
	Phone Number<input type = "text" name = "phone" value = "<%=phone%>" readonly><br>
	User name<input type = "text" name = "uname" value = "<%=userName%>"readonly><br>
	Password<input type = "password" name = "pass" value = "<%=Password%>"readonly><br>
	
	<input type = "submit" name = "submit" value="Delete My Data"><br>
	</form>
	
	
	
	
	
		
    <footer class="footer">
       <div class="footer-top">
           <div class="footer-section">
               <h3>SUPPORT</h3>
               <p>Email: sample@example.com</p>
           </div>
           <hr class="footer-line">
           <div class="footer-section">
               <h3>Contact Us</h3>
               <p>Address: 123 Street, City, Country</p>
               <p>Phone: +1234567890</p>
               <p>Fax: +1234567890</p>
           </div>
       </div>
       <hr class="footer-line">
       <div class="footer-bottom">
           <p>Copyright&copy; 2023 W-Tech. All rights reserved.</p>
           <div class="social-media-links">
               <a href="#"><img src="facebook.png" alt="Facebook"></a>
               <a href="#"><img src="twitter.png" alt="Twitter"></a>
               <a href="#"><img src="instagram.png" alt="Instagram"></a>
           </div>
           <div class="footer-buttons">
               <a href="#">Privacy Policy</a>
               <a href="#">Terms and Conditions</a>
           </div>
       </div>
   </footer>
</body>
</html>