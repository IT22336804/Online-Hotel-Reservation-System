<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Inquiry Details</title>
<link rel="stylesheet" href="inquiryDetails.css">
</head>
<body>



<div>

	<c:forEach var="inquiry" items="${inquiryList}">
		<div class ="detcont">
		        	<c:set var="id" value="${inquiry.inqID}"/>
		        	<c:set var="sub" value="${inquiry.subject}"/>
		        	<c:set var="msg" value="${inquiry.message}"/>
		        	
		        	<c:url value="updateInquiry.jsp" var="inqupdate">
		        	<c:param name="iid" value="${id }"></c:param>
		        	<c:param name="isub" value="${sub }"></c:param>
		        	<c:param name="imsg" value="${msg }"></c:param>
		        	</c:url>
		        	
			        	<div>
			        		<div>Inquiry ID:</div>
			        		<div>${inquiry.inqID}</div>
			        	
			        	</div>
			        	
			        	<div>
			        		<div>Subject:</div>
			        		<div>${inquiry.subject}</div>
			        	
			        	</div>
			        	
			        	<div>
			        		<div>Message:</div>
			        		<div>${inquiry.message}</div>
			        	
			        	</div>
			        	
			        	<div>
			        		<div>
			        	
				        		<a href="${inqupdate}">
				    			<input type = "button" name="update" value="Update my inquiry"></a><br>
				    		
					    		<c:url value="deleteInquiry.jsp" var="inqdelete">
					    		
					    		<c:param name="iid" value="${id }"></c:param>
					        	<c:param name="isub" value="${sub }"></c:param>
					        	<c:param name="imsg" value="${msg }"></c:param>
					    		
					    		</c:url>
					    		
					    		
					    		<a href="${inqdelete}">
					    		<input type="button" name="delete" value="Delete my inquiry"></a>
					    		
				    		
				    		</div>
			    		
			        	</div>
		        	
		        
		</div>
		        	
		        
		        	
		        	
		        	
		         
	</c:forEach>
</div>

</body>
</html>