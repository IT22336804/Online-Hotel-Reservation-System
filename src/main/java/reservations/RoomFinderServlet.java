package reservations;

import java.io.IOException;
import java.util.ArrayList;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/roomFinderServlet")
public class RoomFinderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String guests = request.getParameter("guest");
		request.setAttribute("guests", guests);
		String startDate = request.getParameter("startDate");
		request.setAttribute("startDate", startDate);
		String endDate = request.getParameter("endDate");
		request.setAttribute("endDate", endDate);
		try {

			
			ArrayList<Room> roomDetails = RoomDB.getRoomDetails(startDate, endDate);
			request.setAttribute("roomDetails", roomDetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Reservations.jsp");
		dis.forward(request, response);
		
	}

}
