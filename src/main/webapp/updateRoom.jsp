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
	<%
		String roomid = request.getParameter("roomid");
		String rname = request.getParameter("rname");
		String rdesc = request.getParameter("rdesc");
		String maxoccupants = request.getParameter("maxoccupants");
		String rprice = request.getParameter("rprice");
		String imgloc = request.getParameter("imgloc");
	%>

	<form action="updateRoom" method="get">
		<label for="roomid">Room ID:</label>
		<input type="roomid" name="roomid" id="roomid" value="<%= roomid%>" readonly><br>
		
		<label for="rname">Room Name:</label>
		<input type="text" name="rname" id="rname" value="<%= rname%>"><br>
		
		<label for="rdesc">Room Description:</label>
		<input type="text" name="rdesc" id="rdesc" value="<%= rdesc%>"><br>
		
		<label for="maxOccupants">Maximum Occupants:</label>
		<input type="text" name="maxoccupants" id="maxOccupants" value="<%= maxoccupants%>"><br>
		
		<label for="price">Price per Night:</label>
		<input type="text" name="price" id="price" value="<%= rprice%>"><br>
		
		<label for="imgloc">Room Image Location:</label>
		<input type="text" name="imgloc" id="imgloc" value="<%= imgloc%>"><br>
		
		<input type="submit" name="submit" value="Update">
	</form>
</body>
</html>