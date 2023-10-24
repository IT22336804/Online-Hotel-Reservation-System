 package com.Inquiry;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/inquiryinsert")
public class inquiryinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		
		HttpSession session = request.getSession();
		int uid = (int)session.getAttribute("loggedUserId");
		
		boolean isTrue = true;
		
		isTrue = inquiryDB.insertinquiry(subject, message, uid);
		
		if(isTrue = true) {
			RequestDispatcher dis = request.getRequestDispatcher("inqsuccess.jsp");
			dis.forward(request, response);
			
			
		}else {
			RequestDispatcher dis0 = request.getRequestDispatcher("inqunsuccess.jsp");
			dis0.forward(request, response);
			
		}
		
	}

}
