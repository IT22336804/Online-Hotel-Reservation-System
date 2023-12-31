<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<link rel="stylesheet" href="header-footer.css">
<link rel="stylesheet" href="AboutUs.css">
<style>
#more {display: none;}
</style>
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
    
    
    
    <section class="about">
    	<div class= "content">
    		<img src= "images/inqh.jpg">
    		<div class= "text">
    		<h1>About Us</h1>
    		<h5>One step close to Paradise</h5>
    		
    		<p>Welcome to Regency Hotel, where timeless elegance meets modern comfort. 
    		Nestled in the heart of the city, our luxurious establishment has been a beacon of hospitality for over a century. 
    		With a rich history and a commitment to impeccable service, we strive to create unforgettable experiences for our guests.<span id="dots">...</span><span id="more">Discover a haven of sophistication, 
    		where every stay is a journey through opulence and refinement. 
    		Your comfort is our priority, and we look forward to welcoming you to the Regency Hotel family.</span></p>
    		
    		<button onclick="myFunction()" id="myBtn">Read more</button>
    		</div>
    	</div>
    
	</section>
	
<script>

  	function myFunction() {
 	var dots = document.getElementById("dots");
  	var moreText = document.getElementById("more");
  	var btnText = document.getElementById("myBtn");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more"; 
    moreText.style.display = "none";
  	} 
  else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less"; 
    moreText.style.display = "inline";
  }
}
</script>
	
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