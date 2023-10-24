 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact us</title>
	<link rel="stylesheet" href="header-footer.css">
 	<link rel="stylesheet" href="createInquiry.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"> 
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

    
     <div class="header">
        <h1>Contact Us</h1>
     </div>
     
     <div class="pagecon2">
     
      
      
    
      
    
	    
	<div class="inqForm">   
	    <form action="inq" method="post">
	    
	    		Inquiry  Subject:<br><input type = "text" name ="subject" class="sub-input"><br>
	    		<label for="message">Inquiry Message:</label><br>
	    		
				<textarea id="message" name="message" rows="4" cols="50" class="msg-input"  placeholder="Enter text here..."></textarea><br>
	    	    
	    	        <%
	    	    	if(request.getAttribute("inquiryError") != null){
	    	    %>	
	    	    		<p style="color:red;">${inquiryError}</p>
	    	    <%		
	    	    	}
	    	    %>
	    	    
	    	    <input type = "submit" name = "submit" value = "Send Inquiry" class="button button1">
	    	    
	    	
	    		
	    </form><br>
  

    
  
   
     
    
      	<section class="history">
            <p>View your previous inquiries here.</p>
            <a href="inqde" style = "margin:auto;" ><button class="button button2">My Inquires</button></a>
        </section>
      </div>
        
        
     <div class="container">
    
     <section class="contact-info">
            <h2>Also contact us via</h2><br>
            
            <table>
                <tr>
                  <td><strong>Address </strong></td>
                  <td>Regency Hotel, No: 222, Victoria Road, Colombo 03, Sri Lanka.</td>
                </tr>
                <tr>
                  <td><strong>Email address</strong></td>
                  <td>contact@regencyh69.com</td>
                </tr>
                <tr>
                  <td><strong>Phone number</strong></td>
                  <td>+94 (112) 456-789</td>
                </tr>
              </table>
        </section>
        
        
        <section class="social-linx">
            <h2>Social Media</h2>
            <p>Follow us on:</p><br>
            <div class="Social media">
                <div class="wrapper">
                    <div class="button">
                        <div class="icon">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        </div>
                        <span>Facebook</span>
                    </div>
                    <div class="button">
                        <div class="icon">
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        </div>
                        <span>Twitter</span>
                    </div>
                    <div class="button">
                        <div class="icon">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                        <span>Instagram</span>
                    </div>
                    <div class="button">
                        <div class="icon">
                        <a href="#"><i class="fab fa-youtube"></i></a>
                        </div>
                        <span>YouTube</span>
                    </div>
                </div>
            </div>
        </section>
          </div>
          
          </div>
    
    
    
    
    
    
    
    
     

</body>
</html>