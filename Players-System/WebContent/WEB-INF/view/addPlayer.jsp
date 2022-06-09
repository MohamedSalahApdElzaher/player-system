<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fo" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Player</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resourses/css/mystyle.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous"></head>
</head>
<body>

<fo:form action="savePayer" modelAttribute="player">
	  <div class="form-row">
	     <fo:hidden path="id" />
	    <div class="form-group col-md-6">
	      <label>Name</label>
	      <fo:input path="name" class="form-control" placeholder="Name" />
	    </div>
	    <div class="form-group col-md-6">
	      <label>Number</label>
	      <fo:input path="number" class="form-control" placeholder="Number"/>
	    </div>
	    <div class="form-group col-md-12">
		    <label for="inputAddress">Address</label>
		    <fo:input path="address" class="form-control"  placeholder="Address"/>
		  </div>
		<div class="form-group  col-md-12">
		    <label for="inputAddress2">Phone</label>
		    <fo:input path="phone" class="form-control" id="inputAddress2" placeholder="Phone Number"/>
		  </div>
	  </div>
	  <button type="submit" class="btn btn-primary">Done !</button>
</fo:form>
</body>
</html>