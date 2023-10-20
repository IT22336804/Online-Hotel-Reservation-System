 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
           <img src="images\W - Tech.png" alt="Company Logo">
       </div>
       
           <div class="menu">
               <a class="menu-item" href="#">Home</a>
               <a class="menu-item" href="#">Find Rooms</a>
               <a class="menu-item" href="#">About Us</a>
           </div>
       
       <div class="signup-login">
           <a class="login-button" href="php\loginUser.php">Login</a>
           <a class="signup-button" href="php\SignUp.php">Signup</a>
       </div>
    </nav>


    
     <div class="header">
        <h1>Contact Us</h1>
     </div>
     
     <div class="pagecon2">
     
      
      
    
      
    
	    
	<div class="inqForm">   
	    <form action="inq" method="post">
	    
	    		Inquiry  Subject:<br><input type = "text" name ="subject" class="sub-input" ><br>
	    		<label for="message">Inquiry Message:</label><br>
	    		
				<textarea id="message" name="message" rows="4" cols="50" class="msg-input">Enter text here...
				</textarea><br>
	    	    
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
                  <td>eChannelling PLC, No: 222, K A L Rathnayake Mawatha, Colombo 1, Sri Lanka.</td>
                </tr>
                <tr>
                  <td><strong>Email address</strong></td>
                  <td>contact@echanneling.com</td>
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