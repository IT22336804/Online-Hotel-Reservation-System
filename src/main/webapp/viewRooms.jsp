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

	<a href="showRoom"> view</a>
	<div>
		<c:forEach var="rm" items="${roomsdet}">
		
			<c:set var="roomid" value="${rm.rID}"/>
			<c:set var="rname" value="${rm.roomName}"/>
			<c:set var="rdesc" value="${rm.descript}"/>
			<c:set var="maxoccupants" value="${rm.maxOccupants}" />
			<c:set var="rprice" value="${rm.price}"/>
			<c:set var="imgloc" value="${rm.imageLocation}"/>
			
			
			<div>Room ID : ${rm.rID}</div>
			<div>Room Name : ${rm.roomName}</div>
			<div>Room Description : ${rm.descript}</div>
			<div>Max Occupants : ${rm.maxOccupants}</div>
			<div>Room Price : ${rm.price}</div>
			<div>Room Image : ${rm.imageLocation}</div><br><br>
			
			<div>
				<c:url value="updateRoom.jsp" var="updateroom">
					<c:param name="roomid" value="${roomid}"/>
					<c:param name="rname" value="${rname}"/>
					<c:param name="rdesc" value="${rdesc}"/>
					<c:param name="maxoccupants" value="${maxoccupants}"/>
					<c:param name="rprice" value="${rprice}"/>
					<c:param name="imgloc" value="${imgloc}"/>
				</c:url>
				<a href="${updateroom}">
					<button>Update Room</button>
				</a>
			</div>
			<div>
				<c:url value="deleteRoom.jsp" var="deleteroom">
					<c:param name="roomid" value="${roomid}"/>
					<c:param name="rname" value="${rname}"/>
					<c:param name="rdesc" value="${rdesc}"/>
					<c:param name="maxoccupants" value="${maxoccupants}"/>
					<c:param name="rprice" value="${rprice}"/>
					<c:param name="imgloc" value="${imgloc}"/>
				</c:url>
				<a href="${deleteroom}">
					<button>Delete Room</button>
				</a>
			</div>
				
		</c:forEach>
	</div>
	
</body>
</html>