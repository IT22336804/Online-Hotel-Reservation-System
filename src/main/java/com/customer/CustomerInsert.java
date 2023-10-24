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

    // Extracted the password validation logic into a separate method for clarity
    private boolean isPasswordValid(String password) {
        // Check if the password contains at least one capital letter, one number, and one simple letter
        return password.matches("^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d).+$");
    }

    // Add a method to validate the input and throw ValidationException if validation fails
    private void validateInput(String name, String email, String phone, String username, String password)
            throws ValidationException {
        if (username.isEmpty() || email.isEmpty() || password.isEmpty() || name.isEmpty() || phone.isEmpty()) {
            throw new ValidationException("**All fields are required");
        }

        if (!isPasswordValid(password)) {
            throw new ValidationException("**Password must have at least one capital letter, one number, and one simple letter");
        }

        if (!phone.matches("\\d{10}")) {
            throw new ValidationException("**Invalid phone number. Please enter a valid phone number Ex:(07********).");
        }

        if (!email.matches("\\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}\\b")) {
            throw new ValidationException("**Invalid email address. Please enter a valid email address.");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("uid");
        String password = request.getParameter("psw");

        boolean isTrue;


        try {
            validateInput(name, email, phone, username, password);
            isTrue = CustomerDBUtil.insertcustomer(name, email, phone, username, password);

            if (isTrue) {
                RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
                dis.forward(request, response);
            } else {
                RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
                dis2.forward(request, response);
            }
        } catch (ValidationException e) {
            // Handle validation exception
            request.setAttribute("error", e.getMessage());

            RequestDispatcher dis = request.getRequestDispatcher("customerinsert.jsp");
            dis.forward(request, response);
        }
    }
}
