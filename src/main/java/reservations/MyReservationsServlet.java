package reservations;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MyReservationsServlet")
public class MyReservationsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			ArrayList<Reservation> reservs = ReservationDB.viewReservation();
			request.setAttribute("reservs", reservs);
		
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("MyReservations.jsp");
		dis.forward(request, response);
		
	}

}
