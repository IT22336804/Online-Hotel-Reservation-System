package admin.rooms;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RoomInsertServlet")
public class RoomInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rname = request.getParameter("rname");
		String rdesc = request.getParameter("rdesc");
		String maxOccupants = request.getParameter("maxoccupants");
		double price = Double.parseDouble(request.getParameter("price"));
		String imgloc = request.getParameter("imgloc");
		
		boolean isSuccess = AdminRoomDB.insertRoomDetails(rname, rdesc, maxOccupants, price, imgloc);
		
		if(isSuccess == true) {
			RequestDispatcher dis = request.getRequestDispatcher("showRoom");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("fail.jsp");
			dis.forward(request, response);
		}
		
	}

}
