<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
body{
	background-image:url("images/edvin-johansson-rlwE8f8anOc-unsplash.jpg");
	background-size:cover;
}
h1{
	text-align:center;
	color:yellow;
	/*background-color:yellow;*/
	font-size:50px;
	font-family:cursive;
	text-shadow:
        -1px -1px 0 #98a4c0, /* Top-left shadow (lighter shade) */
        1px -1px 0 #98a4c0,  /* Top-right shadow (lighter shade) */
        -1px 1px 0 #98a4c0,  /* Bottom-left shadow (lighter shade) */
        1px 1px 0 #98a4c0;   /* Bottom-right shadow (lighter shade) */
}

.name,.password , .newuser{
	color:lightgreen;
	font-weight:strong;
	font-family:cursive;
	
}
#newuser{
	color:darkblue;
	text-shadow:
		 -1px -1px 0 #98a4c0, /* Top-left shadow (lighter shade) */
        1px -1px 0 #98a4c0,  /* Top-right shadow (lighter shade) */
        -1px 1px 0 #98a4c0,  /* Bottom-left shadow (lighter shade) */
        1px 1px 0 #98a4c0;   /* Bottom-right shadow (lighter shade) */
}
	/* Style the container */
.container {
  max-width: 400px;
  margin: 0 auto;
  padding: 20px;
}

/* Style the fieldset (optional) */
fieldset {
  border: 2px solid #ccc;
  border-radius: 5px;
  padding: 10px;
}

/* Style the form elements */
input[type="text"],
input[type="password"] {
  width: 90%;
  padding: 8px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

/* Style the submit button */
input[type="submit"] {
  width: 100%;
  padding: 10px;
  background-color: #2196F3;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-family:cursive;
}

/*  Hover effect */
input[type="submit"]:hover {
  background-color: #0d8aed;
}

/*  Active/Clicked effect */
input[type="submit"]:active {
  background-color: #0a6ab9;
}

/*  Focus/Rollover effect */
input[type="submit"]:focus {
  outline: none;
  box-shadow: 0 0 0 3px rgba(33, 150, 243, 0.5);
}
	
.secform{
	margin-top:10px;
}
	
</style>
</head>
<body>

	 

	<h1>The Puriton</h1>
	<div class = "container">
	
	<form action = "log" method = "post">
	
	<fieldset>
	<div class = "name">
	User Name <input type = "text" name = "uid" required ><br>
	</div>
	<div class = "password">
	Password <input type = "password" class = "password"name = "pass" required><br>
	</div>

	<input type = "submit" name = "submit" value = "login"><br>
	</form>
	
	<form action = "customerinsert.jsp" method = "post">
	<div class = "newuser" id = "newuser">
	 or new user? click here...
	</div>
		<input type = "submit" name = "submit" value = "SignUp" class = "secform">
	</form>
	
	</fieldset>
	</div>
	
	
</body>
</html>