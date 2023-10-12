package reservations;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class roomFinderServlet
 */
@WebServlet("/roomFinderServlet")
public class RoomFinderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String guests = request.getParameter("guest");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		try {
			LocalDate date = LocalDate.parse(startDate, DateTimeFormatter.ISO_DATE);
			startDate = date.toString();
			
			LocalDate date1 = LocalDate.parse(endDate, DateTimeFormatter.ISO_DATE);
			endDate = date.toString();
			
			ArrayList<Integer> roomID = ReservationDB.getUnavailableRooms(startDate, endDate);
			
			ArrayList<Room> roomDetails = RoomDB.getRoomDetails(roomID);
			request.setAttribute("roomDetails", roomDetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Reservations.jsp");
		dis.forward(request, response);
		
	}

}
