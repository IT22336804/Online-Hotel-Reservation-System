<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>

<link rel="stylesheet" href="header-footer.css">
<link rel="stylesheet" href="CustomerDemo.css" />
<link rel="stylesheet" href="CustomerStyle.css">
<script src = "CustomerScript.js"></script>

		
       
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
	
	
	
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email =  request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String Password = request.getParameter("pass");	
	%>
	<form action = "updateCus" method = "post">
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
              

	
<div class="student-profile py-4">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent text-center">
            <img class="profile_img" src="https://source.unsplash.com/600x300/?student" alt="student dp">
            <h3><%=name%></h3>
          </div>
          <div class="card-body">
            <p class="mb-0"><strong class="pr-1">User ID:</strong><input type = "text" name = "cusid" value = "<%=id %>"readonly></p>
            
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
                <td><input type = "text" name = "name" value = "<%=name%>" required></td>
              </tr>
              <tr>
                <th width="30%">Email Address</th>
                <td width="2%">:</td>
                <td><input type = "email" name = "email" value = "<%=email%>"required>
                </td>
              </tr>
              <tr>
                <th width="30%">Phone Number</th>
                <td width="2%">:</td>
                <td><input type = "text" name = "phone" value = "<%=phone%>"pattern="[0-9]{10}" maxlength = "10" required></td>
              </tr>
              <tr>
                <th width="30%">User Name</th>
                <td width="2%">:</td>
                <td><input type = "text" name = "uname" value = "<%=userName%>" required></td>
              </tr>
              <tr>
                <th width="30%">password</th>
                <td width="2%">:</td>
                <td><input type = "password" name = "pass" value = "<%=Password%>" required></td>
              </tr>
            </table>
          </div>
         
        </div>
          <div style="height: 26px"></div>
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Profile Edit & Delete</h3>
          </div>
          <div class="card-body pt-0">
              <p>"Caution: Deleting or updating your profile will permanently alter your account information. Please ensure you have backed up any essential data before proceeding."</p>
          </div>

	
          <div  class="ScriptTop">
            <ul> 
                <li><a><button type = "submit" name = "submit"onclick="validateAndAlert()">Update My Data</button></a></li>
                   
            </ul>
            <div id="validationResult"></div> 
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
    <!-- Analytics -->
	<br>
</form>



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