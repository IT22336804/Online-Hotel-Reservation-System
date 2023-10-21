<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Inquiry Details</title>
<link rel="stylesheet" href="inquiryDetails.css">
<link rel="stylesheet" href="header-footer.css">
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
               <a class="menu-item" href="profile">Profile</a>
           </div>
       
       <div class="signup-login">
           <a class="login-button" href="php\loginUser.php">Login</a>
           <a class="signup-button" href="php\SignUp.php">Signup</a>
       </div>
    </nav><br>



<div class=inqlist>

	<c:forEach var="inquiry" items="${inquiryList}">
		<div class ="detcont">
		        	<c:set var="id" value="${inquiry.inqID}"/>
		        	<c:set var="sub" value="${inquiry.subject}"/>
		        	<c:set var="msg" value="${inquiry.message}"/>
		        	
		        	<c:url value="updateInquiry.jsp" var="inqupdate">
		        	<c:param name="iid" value="${id }"></c:param>
		        	<c:param name="isub" value="${sub }"></c:param>
		        	<c:param name="imsg" value="${msg }"></c:param>
		        	</c:url>
		        	
			        	<br><div>
			        		<div class="i">Inquiry ID:</div>
			        		<div>${inquiry.inqID}</div>
			        	
			        	</div><br>
			        	
			        	<div>
			        		<div class="s">Subject:</div>
			        		<div>${inquiry.subject}</div>
			        	
			        	</div><br>
			        	
			        	<div>
			        		<div class="m">Message:</div>
			        		<div>${inquiry.message}</div>
			        	
			        	</div>
			        	
			        	<div>
			        		<div><br>
			        	
				        		<a href="${inqupdate}">
				    			<input type = "button" name="update" value="Update my inquiry" class= buttonu></a><br>
				    		
					    		<c:url value="deleteInquiry.jsp" var="inqdelete">
					    		
					    		<c:param name="iid" value="${id }"></c:param>
					        	<c:param name="isub" value="${sub }"></c:param>
					        	<c:param name="imsg" value="${msg }"></c:param>
					    		
					    		</c:url>
					    		
					    		
					    		<a href="${inqdelete}">
					    		<input type="button" name="delete" value="Delete my inquiry" class=buttond></a>
					    		
				    		
				    		</div><br>
			    		
			        	</div>
		        	
		        
		</div>
		        	
		        
		        	
		        	
		        	
		         
	</c:forEach>
</div>

 <br><footer class="footer">
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