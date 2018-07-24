<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>customers list</title>
<!-- reference our style sheet -->
<link type="text/css"
 rel="stylesheet"
 href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
  <div id="wrapper">
  	<div id="header">
  		<h2>CRM -CUSTOMER RELATIONSHIP MANAGER</h2>
  	</div>
  </div>
  
  <div id="container">
  	<div id="content">
  	
  	<input type="button" value="Add Customer" onclick="window.location.href='showFormForAdd'; return false;"
  	class="add-button"/>
  	
  	  <!--  add a search box -->
            <form:form action="search" method="POST">
                Search customer: <input type="text" name="theSearchName" />
                
                <input type="submit" value="Search" class="add-button" />
            </form:form>
  	
  	<!-- add out html table here -->
  	<table>
  	
  	<tr>
  		<th>ROLL NO</th>
  		<th>FIRST NAME</th>
  		<th>LAST NAME</th>
  		<th>EMAIL</th>
  		<th>ACTION</th>
  	
  	</tr>
  	
  	<!-- LOOP over and print our customers -->
  	<c:forEach  var="tempCustomer" items="${customers}">
  		<!--  create an update link with customer id -->
  		<c:url var="updateLink" value="/customer/showFormUpdate">
  		<c:param name="customerId" value="${tempCustomer.id}"></c:param>
  		</c:url>
  		
  		<c:url var="deleteLink" value="/customer/delete">
  		<c:param name="customerId" value="${tempCustomer.id}"></c:param>
  		</c:url>
  	<tr>
  		<td>${tempCustomer.id}</td>
  		<td>${tempCustomer.firstName}</td>
  		<td>${tempCustomer.lastName}</td>
  		<td>${tempCustomer.email}</td>
  		<td>
  			<!-- display the update link -->
  			<a href="${updateLink}">Update</a>
  			|
  			<a href="${deleteLink}" onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
  			
  		</td>	
  	</tr>
  	
  	</c:forEach>
  	
  	</table>
  	</div>
  </div>
  
</body>
</html>