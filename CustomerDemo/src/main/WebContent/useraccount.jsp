<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>hikz</title>
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

	<table>
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	
<div class="container emp-profile">

                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="IMG/Profile.jpg" style="width:250px;height:350px;"alt=""/>

                        </div>
                    </div>
                    <div class="col-md-6">

                        <div class="profile-head">
                                    <h5>
                                       User Profile
                                    </h5>
                                    <br><br><br>
                                     <div class="row">
                                            <div class="col-md-6">
                                                <label>Customer Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <h6>${cus.id}</h6>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Customer Name </label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${cus.name}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${cus.email}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${cus.phone}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${cus.userName}</p>
                                            </div>
                                        </div>
                                        
                                        
                        </div>
                    </div>
                    
     <c:url value="UpdateCustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
	</c:url>
                    
                    <br>
	<c:url value="deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
      <div class="col-md-2">
     <a href="${cusupdate}">
	<input type="button" name="update"  class="profile-edit-btn" value="Update">
	<br><br>
	<a href="${cusdelete}">
	<input type="button" name="delete" class="profile-edit-btn" value="Delete Profile">
	</a>
    </div>
   
   
	
	
	
   
                   
                    
   </c:forEach>
	</table>
                

</body>
</html>