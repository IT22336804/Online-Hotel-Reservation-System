<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	
	String id = request.getParameter("iid");
	String subject = request.getParameter("isub");
	String message = request.getParameter("imsg");
	
	%>

  <form action="update" method="post">
  
  			Inquiry Id:<br><input type = "text" name ="inqId" value="<%= id %>" readonly><br>
    
    		Subject:<br><input type = "text" name ="subject" value="<%= subject%>"><br>
    		
    		<label for="message">Inquiry Message:</label><br>
    		
			<textarea id="message" name="message"   rows="4" cols="50"><%= message%>
			</textarea><br>
			
			<input type = "submit" name= "submit" value="Update My Data"> <br>
			
			
    		
    </form>

</body>
</html>