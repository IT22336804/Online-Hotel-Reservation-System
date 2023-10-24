<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="header-footer.css">
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
	         <a class="login-button" href="logout">Logout</a>
	         
	     </div>
	</nav>
	
	<div>
		<c:forEach var="reservs" items="${reservs}">
			<c:set var="resId" value="${reservs.resID}" scope="session"/>
			<c:set var="resPrice" value="${reservs.price}" scope="session"/>
			<c:set var="startD" value="${reservs.startDate}" scope="session"/>
			<c:set var="endD" value="${reservs.endDate}" scope="session"/>
			
		
			<div>reservation ID: ${reservs.resID}</div><br>
			<div>check-in: ${reservs.startDate}</div><br>
			<div>check-out: ${reservs.endDate}</div><br>
			<div>bill: ${reservs.payment}</div><br>
			<div>guests: ${reservs.guests}</div><br>
			<div>room name: ${reservs.roomName}</div><br>
			<div>price: ${reservs.price}</div><br>
					
			<div>
			
				<c:url value="UpdateReservation.jsp" var="updateRes">
					<c:param name="resId" value="${resId}"/>
					<c:param name="resPrice" value="${resPrice}"/>
					<c:param name="startD" value="${startD}"/>
					<c:param name="endD" value="${endD}"/>
					
				</c:url>
			
				<a href="${updateRes}">Update</a>
			</div><br>
			
			<div>
			
				<c:url value="deleteBook" var="deleteRes">
					<c:param name="rId" value="${resId}"/>
					
				</c:url>
			
				<a href="${deleteRes}" onclick="return confirm('Are you sure you want to delete your reservation')">Delete</a>
			
			</div><br><br><br>
			
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