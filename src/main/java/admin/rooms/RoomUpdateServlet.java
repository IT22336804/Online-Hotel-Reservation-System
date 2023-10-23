package admin.rooms;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RoomUpdateServlet")
public class RoomUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int roomid = Integer.parseInt(request.getParameter("roomid"));
		String rname = request.getParameter("rname");
		String rdesc = request.getParameter("rdesc");
		String maxoccupants = request.getParameter("maxoccupants");
		double price = Double.parseDouble(request.getParameter("price"));
		String imgloc = request.getParameter("imgloc");
		
		boolean isSuccess = AdminRoomDB.updateRoomDetails(roomid, rname, rdesc, maxoccupants, price, imgloc);
		
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
