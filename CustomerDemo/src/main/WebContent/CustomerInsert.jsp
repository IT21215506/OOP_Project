<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<link rel="stylesheet" type = "text/css" href="CSS/register.css" >
	<style type="text/css">
	
		body{
			font-family: Hind SemiBold;
		}
	</style>
</head>
<body>

	
  <div class="container">
    <div class="title">Registration</div>
    <div class="content">
	<form action="CustomerInsert" method="post">
		      <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="name">
          </div>
          <div class="input-box">
            <span class="details">User Name</span>
            <input type="text" name="username">
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" name="email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="phone" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="password" name="password" required>
          </div>
          
         
        </div>

		
        <div class="button">
		
		<input type="submit" name="submit" value="Create An Account">
		</div>
	</form>


</body>
</html>