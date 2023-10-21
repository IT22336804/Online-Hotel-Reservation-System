package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CustomerInsert() {
        super();
        
    }
 // Extracted the password validation logic into a separate method for clarity
    private boolean isPasswordValid(String password) {
        // Check if the password contains at least one capital letter, one number, and one simple letter
        return password.matches("^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d).+$");
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		//validation
		if (username.isEmpty() || email.isEmpty() || password.isEmpty() || name.isEmpty() || phone.isEmpty()) {
            // Handle validation error
            request.setAttribute("error", "**All fields are required");
            RequestDispatcher dis = request.getRequestDispatcher("customerinsert.jsp");
            dis.forward(request, response);
            return;
        }
		// Check if the password meets complexity requirements
	    if (!isPasswordValid(password)) {
	        // Handle password complexity error
	        request.setAttribute("error", "**Password must have at least one capital letter, one number, and one simple letter");
	        RequestDispatcher dis = request.getRequestDispatcher("customerinsert.jsp");
	        dis.forward(request, response);
	        return;
	    }
	    
	 // Validate phone number (allow only digits and ensure it has a maximum length of 10)
	    if (!phone.matches("\\d{10}")) {
	        // Handle phone number validation error
	        request.setAttribute("error", "**Invalid phone number. Please enter a valid phone number Ex:(07********).");
	        request.setAttribute("name", name);
	        request.setAttribute("email", email);
	        request.setAttribute("phone", phone);
	        request.setAttribute("uid", username);

	        RequestDispatcher dis = request.getRequestDispatcher("customerinsert.jsp");
	        dis.forward(request, response);
	        return;
	    }

	    // Validate email address using a simple regex pattern
	    if (!email.matches("\\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}\\b")) {
	        // Handle email validation error
	        request.setAttribute("error", "**Invalid email address. Please enter a valid email address.");
	        request.setAttribute("name", name);
	        request.setAttribute("email", email);
	        request.setAttribute("phone", phone);
	        request.setAttribute("uid", username);

	        RequestDispatcher dis = request.getRequestDispatcher("customerinsert.jsp");
	        dis.forward(request, response);
	        return;
	    }
	    
		isTrue  = CustomerDBUtil.insertcustomer(name, email, phone, username, password);
		
		if(isTrue == true) {
//			transer to another jsp
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
