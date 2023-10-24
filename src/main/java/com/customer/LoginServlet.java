package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		try {
//		List<Customer> cusDetails = CustomerDBUtil.validate(username, password);
		int id = CustomerDBUtil.validate(username, password);	
//		request.setAttribute("cusDetails", cusDetails);
		
		if(id == 0) {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
		else {
			HttpSession session = request.getSession();
			session.setAttribute("loggedUserId", id);
			
			RequestDispatcher dis = request.getRequestDispatcher("indexLogged.jsp");
			dis.forward(request, response);
		}
		
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}



