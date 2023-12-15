<%@ page import="java.util.*" %>
<%@ page import="com.crud.model.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	List<User> allUsers = (List<User>)request.getAttribute("all_users");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

	<nav class="navbar bg-dark navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="${pageContext.request.contextPath}/views/adduser.jsp">Home</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/views/adduser.jsp">Add User</a>
	        </li>
	        
	      </ul>
	      
	    </div>
	  </div>
	</nav>
	
	


	<h2 align="center" class="mt-4">List of available Users</h2>
	
	<div class='container'>
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">Id</th>
		      <th scope="col">Name</th>
		      <th scope="col">Email</th>
		      <th scope="col">Country</th>
		    </tr>
		  </thead>
		  <tbody>
		  
		  
		  	<% for(User user: allUsers){ %>
		  		<tr>
			      <th scope="row"><%= user.getId() %></th>
			      <td> <%= user.getName() %> </td>
			      <td><%= user.getEmail() %></td>
			      <td><%= user.getCountry() %></td>
		    	</tr>
		  	<%} %>
		  	
		  
		  
		    
		  </tbody>
		</table>
	</div>
	
	
	
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	
	
</body>
</html>