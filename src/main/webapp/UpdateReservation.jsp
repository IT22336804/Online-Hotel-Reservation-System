<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="header-footer.css">
<link rel="stylesheet" href="UpdateReservation.css">
</head>
<body>
	<nav>
	     <div class="logo">
	         <img src="images/hlogo1.png" alt="Company Logo">
	     </div>
	     
	     <div class="menu">
           	<a class="menu-item" href="indexLogged.jsp">Home</a>
               <a class="menu-item" href="MakeReservation.jsp">Find Rooms</a>
               <a class="menu-item" href="profile">Profile</a>
               <a class="menu-item" href="reservs">My Reservations</a>
               <a class="menu-item" href="AboutUsLogged.jsp">About Us</a>
               <a class="menu-item" href="createInquiry.jsp">Contact Us</a>
	     </div>
	     
	     <div class="signup-login">
	         <a class="login-button" href="php\loginUser.php">Login</a>
	         <a class="signup-button" href="php\SignUp.php">Signup</a>
	     </div>
	</nav>

	<div class= "header-section">
		<p>Update Reservations</p>
	</div>

	<div class="form-div">
    	<form action="updateBook" method="get">
    			<div>
	   				<input type="text" name="reserveId" value="<%= request.getParameter("resId") %>" hidden>
	   				<input type="text" name="reservePrice" value="<%= request.getParameter("resPrice") %>" hidden>
   				
   				</div>
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
		    			<input type="date" name="startDate" id="startDate" min="2023-10-23" value="<%= request.getParameter("startD") %>" required >
		    		</div>
		    		
		    		<div class="end-date-div">
		    			<label for="endDate">Check-out: </label>
		    			<input type="date" name="endDate" id="endDate" min="2023-10-23" value="<%= request.getParameter("endD") %>" required>
		    		</div>
		    	</div>
    		<div class="update-button-div">
    			<input type="submit" name="submit" id="submit" value="Update">
    		</div>
    		
    	</form>
    </div>
    
    <%
		if(request.getAttribute("exception") != null){
	%>
	
		<script>alert("${exception}")</script>
	<%
		}
	%>
    
    
    
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