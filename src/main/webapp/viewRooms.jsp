<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="viewRooms.css">
</head>
<body>
	
	<div class="sidemenu">
	  <a href="AdminDashboard.jsp">Home</a>
	  <a class="active" href="showRoom">View Rooms</a>
	  <a href="roomInsert.jsp">Create Room</a>
	  <a href="#profile">profile</a>
	</div>
	
	<a href="showRoom"> view</a>
	<div class="rooms-list-div">
		<table>
			<tr>
				<th class="room-det">Room No</th>
				<th class="room-det">Room Name</th>
				<th class="room-det">Room Description</th>
				<th class="room-det">Maximum Occupants</th>
				<th class="room-det">Price per Night</th>
				<th class="room-det">Image location</th>
			</tr>
			
			<c:forEach var="rm" items="${roomsdet}">
				<tr>
					<div class="room-div">
						<c:set var="roomid" value="${rm.rID}"/>
						<c:set var="rname" value="${rm.roomName}"/>
						<c:set var="rdesc" value="${rm.descript}"/>
						<c:set var="maxoccupants" value="${rm.maxOccupants}" />
						<c:set var="rprice" value="${rm.price}"/>
						<c:set var="imgloc" value="${rm.imageLocation}"/>
						
						
						<td><div class="room-det">${rm.rID}</div></td>
						<td><div class="room-det">${rm.roomName}</div></td>
						<td><div class="room-det">${rm.descript}</div></td>
						<td><div class="room-det">${rm.maxOccupants}</div></td>
						<td><div class="room-det">${rm.price}</div></td>
						<td><div class="room-det">${rm.imageLocation}</div></td>
						
						<td>
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
						</td>
						<td>
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
						</td>
					</div>
				</tr>
			</c:forEach>
		</table>
	</div>
	
</body>
</html>