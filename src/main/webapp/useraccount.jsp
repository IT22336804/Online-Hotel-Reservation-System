<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Profile</title>
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>

<link rel="stylesheet" href="header-footer.css">
<link rel="stylesheet" href="CustomerDemo.css" />
<link rel="stylesheet" href="CustomerStyle.css">
</head>
<body>
	
 <nav>
       <div class="logo">
           <img src="images\W - Tech.png" alt="Company Logo">
       </div>
       
           <div class="menu">
               <a class="menu-item" href="index.jsp">Home</a>
               <a class="menu-item" href="#">Find Rooms</a>
               <a class="menu-item" href="#">About Us</a>
               <a class="menu-item" href="profile">Profile</a>
           </div>
       
       <div class="signup-login">
           <a class="login-button" href="php\loginUser.php">Login</a>
           <a class="signup-button" href="php\SignUp.php">Signup</a>
		   <a class="logout-button" href="logout">Logout</a>
           
       </div>
    </nav>
	
	
	<c:forEach var = "cus" items ="${cusDetails}">
	
	<c:set var = "id" value = "${cus.id}"/>
	<c:set var = "name" value = "${cus.name}"/>
	<c:set var = "email" value = "${cus.email}"/>
	<c:set var = "phone" value = "${cus.phone}"/>
	<c:set var = "username" value = "${cus.username}"/>
	<c:set var = "password" value = "${cus.password}"/>
	
	
<div class="ScriptTop">
    <div class="rt-container">
        <div class="col-rt-4" id="float-right">
 
        </div>
        <div class="col-rt-2">
           
        </div>
    </div>
</div>

<header class="ScriptHeader">
    <div class="rt-container">
    	<div class="col-rt-12">
        	<div class="rt-heading">
            	<h1>Hi , Welcome To Your Profile</h1>
                <p></p>
            </div>
        </div>
    </div>
</header>

<section>
    <div class="rt-container">
          <div class="col-rt-12">
              <div class="Scriptcontent">
              
<!-- Student Profile -->
<div class="student-profile py-4">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent text-center">
            <img class="profile_img" src="https://source.unsplash.com/600x300/?student" alt="student dp">
            <h3> ${cus.name}</h3>
          </div>
          <div class="card-body">
            <p class="mb-0"><strong class="pr-1">User ID:</strong>${cus.id}</p>
            
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>User Information</h3>
          </div>

		
          <div class="card-body pt-0">
            <table class="table table-bordered">
              <tr>
                <th width="30%">Full Name</th>
                <td width="2%">:</td>
                <td>${cus.name}</td>
              </tr>
              <tr>
                <th width="30%">Email Address</th>
                <td width="2%">:</td>
                <td>${cus.email}</td>
              </tr>
              <tr>
                <th width="30%">Phone Number</th>
                <td width="2%">:</td>
                <td>${cus.phone}</td>
              </tr>
              <tr>
                <th width="30%">User Name</th>
                <td width="2%">:</td>
                <td>${cus.username}</td>
              </tr>
             
            </table>
          </div>
         </c:forEach>


        </div>
          <div style="height: 26px"></div>
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Profile Edit & Delete</h3>
          </div>
          <div class="card-body pt-0">
              <p>
              <li>"Caution: Deleting or updating your profile will permanently alter your account information. Please ensure you have backed up any essential data before proceeding." </li>
              </p>
          </div>

          <div  class="ScriptTop">
            <ul>
                <li>
                <c:url value = "updatecustomer.jsp" var = "cusupdate">
					<c:param name = "id" value = "${id}"/>
					<c:param name = "name" value = "${name}"/>
					<c:param name = "email" value = "${email}"/>
					<c:param name = "phone" value = "${phone}"/>
					<c:param name = "uname" value = "${username}"/>
					<c:param name = "pass" value = "${password}"/>
				</c:url>
                <a href = "${cusupdate}">Update My Data</a></li>
                
                <c:url value = "deletecustomer.jsp" var = "cusdelete">
					<c:param name = "id" value = "${id}"/>
					<c:param name = "name" value = "${name}"/>
					<c:param name = "email" value = "${email}"/>
					<c:param name = "phone" value = "${phone}"/>
					<c:param name = "uname" value = "${username}"/>
					<c:param name = "pass" value = "${password}"/>
				</c:url>
                <li><a href = "${cusdelete}">Delete My Account</a></li>
            </ul>
        </div>


        </div>
      </div>
    </div>
  </div>
</div>

    		</div>
		</div>
    </div>

</section>
   
	
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