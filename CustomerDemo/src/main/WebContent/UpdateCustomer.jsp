<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Account</title>
	<link rel="stylesheet" type = "text/css" href="CSS/userac.css" >

	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}

		table, th, td {
  			border: 1px solid black;
		}
	</style>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

	<%
		String id = request.getParameter("id");
	    String userName = request.getParameter("uname");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String password = request.getParameter("pass");
	%>

	  <div class="container emp-profile">
	  <h1>Account Update</h1>

               <div class="center">
	<form action="UpdateCustomerServlet" method="post">
	 <div class="row">
                                            <div class="col-md-6">
                                                <label>Customer Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <h6><input type="text" name="cusid" value="<%= id %>" readonly></h6>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Customer Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><input type="text" name="name" value="<%= name %>"></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><input type="text" name="email" value="<%= email %>"></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><input type="text" name="phone" value="<%= phone %>"></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><input type="text" name="uname" value="<%= userName %>"></p>
                                            </div>
                                          <div class="col-md-6">
                                                <label>Password</label>
                                            </div>
                                            <div class="col-md-6">
                                                <h6><input type="password" name="pass" value="<%= password %>"></h6>
                                            </div>

                                        </div>
                                        <input type="submit" name="submit" value="Update My Data">


</body>
</html>