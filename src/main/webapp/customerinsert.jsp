<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CustomerInsert.css">
    <link rel="stylesheet" href="header-footer.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">
    
    <script src = "CustomerScript.js"></script>
<meta charset="ISO-8859-1">
	<title>Create account</title>
 
</head>
<body>	



	<nav>
       <div class="logo">
           <img src="images/hlogo1.png" alt="Company Logo">
       </div>
       
           <div class="menu">
               <a class="menu-item" href="login.jsp">Home</a>
               <a class="menu-item" href="#">Find Rooms</a>
               <a class="menu-item" href="#">About Us</a>
               <a class="menu-item" href="#">Profile</a>
           </div>
       
       <div class="signup-login">
           <a class="login-button" href="php\loginUser.php">Login</a>
           <a class="signup-button" href="php\SignUp.php">Signup</a>
		   <a class="logout-button" href="">Logout</a>
           
       </div>
    </nav>





	 <div class="container">
        <form action="insert" method="post" class="sign-form" id="sign-form" autocomplete="on">
            <h1 class="form-title">Sign Up</h1>
            <p class="form-caption">Creating Memories, One Stay at a Time!</p>


            <label for="fullname">Full Name<span class="star-required" >*</span></label>
            <input type="text" name="name" id="fullname" value="${param.name}"placeholder="Full Name" autofocus >

            <label for="email">Email<span class="star-required">*</span></label>
            <input type="text" name="email" id="email" value="${param.email}"placeholder="mail@domain.com">

            <label for="text">Phone Number<span class="star-required">*</span></label>
            <input type="text" name="phone" id="phone"value="${param.phone}" maxlength = "10"placeholder="07********">

            <label for="username">User Name<span class="star-required" >*</span></label>
            <input type="text" name="uid" id="username" value="${param.uid}"  >

            <label for="password">Password<span class="star-required">*</span></label>
            <input type="password" name="psw" id="password"  autofocus >
           
            <br>



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



            <input type="checkbox" id="confirmCheckbox"  name="enableButtonCheckbox" onclick="enableButton()">
            <p class="sentence-agree">I agree to the <a >Terms & Conditions</a></p>



            <input type="submit" value="Sign Up" id="submitButton"disabled>
            

            
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