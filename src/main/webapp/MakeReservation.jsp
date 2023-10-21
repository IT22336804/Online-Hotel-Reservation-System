<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="header-footer.css">
<link rel="stylesheet" href="reservations.css">
	 <script src="reserve.js"></script>
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
	
	
	<div>
    	<form action="find" method="get">
    		<div>
    			<label for="guest">Guest:</label><br>
    			<select name="guest" id="guest" required>
    				<option value="" selected disabled hidden>Select an Option</option> 
    				<option value="1">1 guest</option>
    				<option value="2">2 guests</option>
    				<option value="3">3 guests</option>
    			</select>
    		</div>
    		<div>
    			<label for="startDate">Check-in:</label><br>
    			<input type="date" name="startDate" id="startDate" min="2023-10-23" value="${startDate}" required >
    		</div>
    		<div>
    			<label for="endDate">Check-out:</label><br>
    			<input type="date" name="endDate" id="endDate" min="2023-10-23" value="${endDate}" required>
    		</div>
    		<div>
    			<input type="submit" name="submit" id="submit" value="Search Rooms">
    		</div>
    		
    	</form>
    </div>
	  
	  
	
		
	<div class="rooms">	  
		<c:forEach var="room" items = "${roomDetails}">
		
			<c:set var="rid" value="${room.rID}" scope="session"/>
			<c:set var="price" value="${room.price}" scope="session"/>
			<c:set var="bookStart" value="${startDate}" scope="session"/>
			<c:set var="bookEnd" value="${endDate}" scope="session"/>
			<c:set var="guests" value="${guests}" scope="session"/>
		
			<div class="room-container">
				<div class="room-image-div">
					<img src="${room.imageLocation}">
				</div>
				<div class="room-details-div">
						<div class="room-name-div">
							<p>${room.roomName} ${room.rID}</p>
						</div>
						<div class="room-info-div">
							${room.maxOccupants}
							<p>${room.descript}</p>
							
						</div>
				</div>
				<div class="room-price-div">
					<p>LKR ${room.price}0</p>
				</div>
				<div class="book-button">
					<c:url value="book" var="booking">
						<c:param name="rid" value="${rid}"/>
						<c:param name="price" value="${price}"/>
						<c:param name="bookStart" value="${bookStart}"/>
						<c:param name="bookEnd" value="${bookEnd}"/>
						<c:param name="bookGuests" value="${guests}"/>
					</c:url>
					<a href="${booking}" onclick="return confirm('Are you sure')">BOOK</a>
				</div>
			
			</div>


		</c:forEach>
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