package reservations;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
	
	public void validateDates(String startDate, String endDate) throws DateRangeException {
		
		SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
		
	     try {
	    	 Date sd = sdformat.parse(startDate);
	    	 Date ed = sdformat.parse(endDate);
	    	 
	    	 if(sd.after(ed)) {
	    		 
	    		 throw new DateRangeException("Please select a valid date range.");
	    		 
	    	 }
		} 
	     catch (ParseException e) {
			
			e.printStackTrace();
		}
		
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer resId = Integer.parseInt(request.getParameter("reserveId"));
		String updatedStart = request.getParameter("startDate");
		String updatedEnd = request.getParameter("endDate");
		double price = Double.parseDouble(request.getParameter("reservePrice"));
		Integer updatedGuests = Integer.parseInt(request.getParameter("guest"));
		
		try {
			
			validateDates(updatedStart, updatedEnd);
			
			boolean ret = ReservationDB.updateReservation(resId, updatedStart, updatedEnd, price, updatedGuests);
			
			if(ret = true) {
				
				RequestDispatcher dis = request.getRequestDispatcher("reservs");
				dis.forward(request, response);
		
			}
		}
		catch(DateRangeException e) {
			
			request.setAttribute("exception", e.getMessage());
			
			RequestDispatcher dis = request.getRequestDispatcher("UpdateReservation.jsp");
			dis.forward(request, response);
			
		}
	}

}
