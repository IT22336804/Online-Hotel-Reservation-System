<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="header-footer.css">
<title>Login</title>
<style>
	
	
 	table{
 		display: flex;
    	justify-content: center;
    	align-items: center;
    	margin-top:50px;
    	font-family: Arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
 	}
 	h1 , h2{
 		
 		text-align:center;
 	}
 	h2{
 		color:green;
 	}
 	h1{
 		color:blue;
 	}
 	

    td, th {
        border: none;
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #3498db;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #3498db;
        color: white;
    }

 	
    a {
        text-decoration: none;
    }

    input[type="button"] {
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        background-color: #3498db;
        color: white;
        border: none;
        border-radius: 5px;
        transition: background-color 0.3s;
        
    }

    input[type="button"]:hover {
        background-color: #2980b9;
        
    }
	.button-container {
    	margin-top: 20px; 
    	text-align: center;
    	margin-left: 50px; 
	}

	input[type="button"] {
    	margin-left: 10px; 
	}
	
 	
 	
</style>
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
    


	
	<table>
	<c:forEach var = "cus" items ="${cusDetails}">
	<h1> Hi ${cus.name} </h1>
	<h2>User Account</h2>
	
	<c:set var = "id" value = "${cus.id}"/>
	<c:set var = "name" value = "${cus.name}"/>
	<c:set var = "email" value = "${cus.email}"/>
	<c:set var = "phone" value = "${cus.phone}"/>
	<c:set var = "username" value = "${cus.username}"/>
	<c:set var = "password" value = "${cus.password}"/>
	
	<tr>
		<td>Customer ID</td>
		<td>${cus.id}</td>
	</tr>
	
	<tr>
		<td>Customer Name</td>	
		<td>${cus.name}</td>
	</tr>
	
	<tr>
		<td>Customer Email</td>	
		<td>${cus.email}</td>
	</tr>
	
	<tr>
		<td>Phone Number</td>
		<td>${cus.phone}</td>
	</tr>
	
	<tr>
		<td>Customer UserName</td>
		<td>${cus.username}</td>
	</tr>
	
	<tr>
	<td>Customer Password</td>
	<td>${cus.password}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	<c:url value = "updatecustomer.jsp" var = "cusupdate">
		<c:param name = "id" value = "${id}"/>
		<c:param name = "name" value = "${name}"/>
		<c:param name = "email" value = "${email}"/>
		<c:param name = "phone" value = "${phone}"/>
		<c:param name = "uname" value = "${username}"/>
		<c:param name = "pass" value = "${password}"/>
	</c:url>
	
	<div class = "button-container">
	<a href = "${cusupdate}">
	<input type = "button" name = "update" value = "Update My Data">
	</a>
	
	</div>
	
	<c:url value = "deletecustomer.jsp" var = "cusdelete">
		<c:param name = "id" value = "${id}"/>
		<c:param name = "name" value = "${name}"/>
		<c:param name = "email" value = "${email}"/>
		<c:param name = "phone" value = "${phone}"/>
		<c:param name = "uname" value = "${username}"/>
		<c:param name = "pass" value = "${password}"/>
	</c:url>
	
	<div class = "button-container">
	<a href = "${cusdelete}">
	<input type = "button" name = "delete" value = "Delete My Account">
	</a>
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