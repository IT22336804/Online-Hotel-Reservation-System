<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Inquiry</title>
<link rel="stylesheet" href="deleteInquiry.css">
<link rel="stylesheet" href="header-footer.css">
</head>
<body>

	<%
	
	String id = request.getParameter("iid");
	String subject = request.getParameter("isub");
	String message = request.getParameter("imsg");
	
	%>
	
	<nav>
       <div class="logo">
           <img src="images/hlogo1.png" alt="Company Logo">
       </div>
       
           <div class="menu">
               <a class="menu-item" href="#">Home</a>
               <a class="menu-item" href="#">Find Rooms</a>
               <a class="menu-item" href="AboutUs.jsp">About Us</a>
               <a class="menu-item" href="profile">Profile</a>
                <a class="menu-item" href="createInquiry.jsp">Contact Us</a>
               
           </div>
       
       <div class="signup-login">
           <a class="login-button" href="php\loginUser.php">Login</a>
           <a class="signup-button" href="php\SignUp.php">Signup</a>
       </div>
    </nav>
	
	 <div class="header">
        <h1>Delete Inquiry</h1>
     </div>
	
	
	
	<div class= "inqForm">
	<form action="delete" method="post">
  
  			Inquiry Id:<br><input type = "text" name ="inqId" class= "iid" value="<%= id %>" readonly><br>
    
    		Subject:<br><input type = "text" name ="subject" class="sub-input" value="<%= subject%>" readonly><br>
    		
    		<label for="message">Inquiry Message:</label><br>
    		
			<textarea id="message" name="message"   rows="4" cols="50" class="msg-input" readonly><%= message%>
			</textarea><br>
			
			<input type = "submit" name= "submit" value="Delete inquiry" class="button button1"> <br>
			
			
    		
    </form>
    </div><br>
    
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