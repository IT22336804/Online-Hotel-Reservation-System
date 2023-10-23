<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
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
               <a class="menu-item" href="MakeReservation.jsp">Find Rooms</a>
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
    		<div class="form-details">
	    		<div class="guest-div">
	    			<label for="guest">Guests: </label>
	    			<select name="guest" id="guest" required>
	    				<option value="" selected disabled hidden>Select an Option</option> 
	    				<option value="1">1 guest</option>
	    				<option value="2">2 guests</option>
	    				<option value="3">3 guests</option>
	    			</select>
	    		</div>
	    		
	    		<div class="start-date-div">
	    			<label for="startDate">Check-in: </label>
	    			<input type="date" name="startDate" id="startDate" min="2023-10-23"  required >
	    		</div>
	    		
	    		<div class="end-date-div">
	    			<label for="endDate">Check-out: </label>
	    			<input type="date" name="endDate" id="endDate" min="2023-10-23"  required>
	    		</div>
	    	</div>
    		<div class="search-rooms-button">
    			<input type="submit" name="submit" id="submit" value="Search Rooms">
    		</div>
    		
    	</form>
    </div>
    
    <div class="section-2">
    	<div><img  src="images/indexImage2.jpg"></div>
    	<div class="section-2-details">
    		<p class="Welcome-message">Welcome to Regency Hotel</p>
    		<p class="slogan">-You're one step closer to paradise</p>
    		<a href="AboutUs.jsp"><button class="about-us-button">MORE ABOUT US</button></a>
    	</div>
    	
    </div>
    
    <div class="section-3">
    	<div><img  src="images/roomRS.png"></div>
    	<div class="section-3-details">
    		<p class="section-3-header">Rooms</p>
    		<p class="section-3-info">Our hotel rooms are designed to provide guests with a comfortable and relaxing stay. 
    		Each room features a comfortable bed with clean linens and pillows, modern amenities such as a flat-screen TV, complimentary Wi-Fi, and a mini-fridge.<br><br> 
    		The private bathroom is equipped with clean towels, toiletries, and a shower or bathtub. Guests will find sufficient storage space for their belongings in the closet or dresser. 
    		Climate control is available in each room to ensure guests' comfort throughout their stay.<br><br>Safety features such as smoke detectors, fire alarms, and a safe for storing valuables are also provided. 
    		Daily housekeeping services are available to keep your room clean and tidy.</p>
    		
    	</div>
  
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