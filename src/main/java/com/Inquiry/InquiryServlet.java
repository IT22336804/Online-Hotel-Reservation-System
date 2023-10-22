package com.Inquiry;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/inquiryServlet")
public class InquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    
  

	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int uid = (int)session.getAttribute("loggedUserId");
		
		List<inquiry> inquiryList = inquiryDB.getinquiry(uid);
		request.setAttribute("inquiryList",inquiryList );
		request.getRequestDispatcher("inquiryDetails.jsp").forward(request,response);
		
		
		
		
	
		
	}




}
