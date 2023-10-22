package reservations;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteReservationServlet")
public class DeleteReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int rid = Integer.parseInt(request.getParameter("rId"));
		
		boolean isSuccess = ReservationDB.deleteReservation(rid);
		
	
		
		if(isSuccess == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("reservs");
			dis.forward(request, response);
			
		}
		
	}

}
