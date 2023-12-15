<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link href="./styles.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container add-user">
	
		<form method="post" action="${pageContext.request.contextPath}/add">		
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">Name</label>
		    <input type="text" name="name" class="form-control" id="exampleInputName1" aria-describedby="nameHelp">
		  </div>
		
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">Email address</label>
		    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
		    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputPassword1" class="form-label">Country</label>
		    <input type="text" name="country" class="form-control" id="exampleInputCountry1">
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Submit</button>
		</form>
	
	</div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	
</body>
</html>