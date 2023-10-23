<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="insertRoom" method="get">
		<label for="rname">Room Name:</label>
		<input type="text" name="rname" id="rname"><br>
		
		<label for="rdesc">Room Description:</label>
		<input type="text" name="rdesc" id="rdesc"><br>
		
		<label for="maxOccupants">Maximum Occupants:</label>
		<input type="text" name="maxoccupants" id="maxOccupants"><br>
		
		<label for="price">Price per Night:</label>
		<input type="text" name="price" id="price"><br>
		
		<label for="imgloc">Room Image Location:</label>
		<input type="text" name="imgloc" id="imgloc"><br>
		
		<input type="submit" name="submit" value="Create Room">
	</form>
</body>
</html>