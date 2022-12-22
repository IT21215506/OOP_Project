package com.customer;

import java.io.IOException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;


@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(name, email, phone, username, password);
		
		if(isTrue == true) {
			out.println("<script type = 'text/javascript'>");
            out.println("alert('Your Account Created Please Login');");
            out.println("location = 'login.jsp'");
            out.println("</script>");
		} else {
			  out.println("<script type = 'text/javascript'>");
	            out.println("alert('Account not created try again');");
	            out.println("location = 'useraccount.jsp'");
	            out.println("</script>");
		}
		
		
	}

}
