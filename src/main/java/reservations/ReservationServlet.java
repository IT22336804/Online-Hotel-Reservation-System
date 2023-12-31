package reservations;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int rid = Integer.parseInt(request.getParameter("rid"));
		double price = Double.parseDouble(request.getParameter("price"));
		String start = request.getParameter("bookStart");
		String end = request.getParameter("bookEnd");
		int guests = Integer.parseInt(request.getParameter("bookGuests"));
		
		HttpSession session = request.getSession();
		int uid = (int) session.getAttribute("loggedUserId");
		 
		
		boolean ret = ReservationDB.makeReservation(rid, start, end, price, guests, uid);
		
		if(ret == true) {
			RequestDispatcher dis = request.getRequestDispatcher("reservs");
			dis.forward(request, response);
			
		}
		
		
		
	}

}
