<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="header-footer.css">
<link rel="stylesheet" href="index.css">
</head>
<body>

	 <nav>
       <div class="logo">
           <img src="images/hlogo1.png" alt="Company Logo">
       </div>
       
           <div class="menu">
               <a class="menu-item" href="#">Home</a>
               <a class="menu-item" href="#">Find Rooms</a>
               <a class="menu-item" href="#">About Us</a>
               <a class="menu-item" href="reservs">My Reservations</a>
           </div>
       
       <div class="signup-login">
           <a class="login-button" href="php\loginUser.php">Login</a>
           <a class="signup-button" href="php\SignUp.php">Signup</a>
       </div>
    </nav>
    
    
    <div class="section-1">
    	<img src="images/indexImage1.jpg">
    </div>
    
    
    <div class="form-div">
    	<form action="find" method="get">
    		<div class="guest-div">
    			<label for="guest">Guest:</label><br>
    			<select name="guest" id="guest" required>
    				<option value="" selected disabled hidden>Select an Option</option> 
    				<option value="1">1 guest</option>
    				<option value="2">2 guests</option>
    				<option value="3">3 guests</option>
    			</select>
    		</div>
    		<div class="start-date-div">
    			<label for="startDate">Check-in:</label><br>
    			<input type="date" name="startDate" id="startDate" min="2023-10-23" required >
    		</div>
    		<div class="end-date-div">
    			<label for="endDate">Check-out:</label><br>
    			<input type="date" name="endDate" id="endDate" min="2023-10-23" required>
    		</div>
    		<div class="search-rooms-button">
    			<input type="submit" name="submit" id="submit" value="Search Rooms">
    		</div>
    		
    	</form>
    </div>
    
    
    
    
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