<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<link rel="stylesheet" type = "text/css" href="CSS/login.css" >
	<style type="text/css">
	
		body{
			font-family: Hind SemiBold;
		}
	</style>
	
</head>
<body>
    
    <div class="center">
    <h1>Login Page</h1>
	<form action="LoginServlet" method="post">
	<div class="txt_field">
	
		 <input type="text" name="username" placeholder="Enter your username" > 
		  <span></span>
          <label>User Name</label>
          </div>
           <div class="txt_field">
		<input type="password" name="password" placeholder="Enter your password" >
		<span></span>
          <label>Password</label>
          
		</div>
		<input type="submit" name="submit" value="Login">
		
		<div class="signup_link">
          Not a member? <a href="/CustomerDemo/CustomerInsert.jsp">Sign up</a>
        </div>
      </form>
    </div>

</body>
</html>