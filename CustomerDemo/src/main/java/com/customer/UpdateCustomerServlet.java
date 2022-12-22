package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
//import java.util.List;
import java.util.List;

import javax.servlet.RequestDispatcher;
//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 PrintWriter out = response.getWriter();
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updatecustomer(id, name, email, phone, username, password);
		
		 if (isTrue) {
			 List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
				request.setAttribute("cusDetails", cusDetails);
				
				 out.println("<script type = 'text/javascript'>");
		            out.println("alert('Update Failed. Try Again Later');");
		            RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		            dis.forward(request, response);
		            out.println("</script>");

	           
	        } else {
	        	List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
				request.setAttribute("cusDetails", cusDetails);

	            out.println("<script type = 'text/javascript'>");
	            out.println("alert('Update Failed. Try Again Later');");
	            out.println("location = 'login.jsp'");
	            out.println("</script>");
	        }
	}

}
