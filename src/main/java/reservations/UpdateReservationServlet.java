package reservations;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateReservationServlet
 */
@WebServlet("/UpdateReservationServlet")
public class UpdateReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int resId = Integer.parseInt(request.getParameter("reserveId"));
		String updatedStart = request.getParameter("startDate");
		String updatedEnd = request.getParameter("endDate");
		double price = Double.parseDouble(request.getParameter("reservePrice"));
		int updatedGuests = Integer.parseInt(request.getParameter("guest"));
		
		boolean ret = ReservationDB.updateReservation(resId, updatedStart, updatedEnd, price, updatedGuests);
		
		if(ret = true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		
		}
		
	}

}
