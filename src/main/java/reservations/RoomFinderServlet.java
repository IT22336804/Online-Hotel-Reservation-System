package reservations;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/roomFinderServlet")
public class RoomFinderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
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
		
		String guests = request.getParameter("guest");
		request.setAttribute("guests", guests);
		String startDate = request.getParameter("startDate");
		request.setAttribute("startDate", startDate);
		String endDate = request.getParameter("endDate");
		request.setAttribute("endDate", endDate);
		try {
			
			validateDates(startDate, endDate);
			
			ArrayList<Room> roomDetails = RoomDB.getRoomDetails(startDate, endDate);
			request.setAttribute("roomDetails", roomDetails);
			

			
		}
		catch(DateRangeException e) {
			request.setAttribute("exception", e.getMessage());
		}
		
		finally {
			RequestDispatcher dis = request.getRequestDispatcher("MakeReservation.jsp");
			dis.forward(request, response);
		}
		
	}

}
