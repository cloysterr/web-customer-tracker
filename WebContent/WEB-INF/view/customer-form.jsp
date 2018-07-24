<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
<title>Add new customer</title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - CUSTOMER RELATION MANAGER</h2>
		</div>

		<div id="container">
			<h3>Save customer</h3>
			<form:form action="saveCustomer" modelAttribute="customer"
				method="POST">
				
				<!-- need to associate this data with customer id -->
				<form:hidden path="id"/>
				<table>
					<tbody>
						<tr>
							<td><label>First name:</label></td>
							<td><form:input path="firstName" /></td>
						</tr>
						<tr>
							<td><label>Last name:</label></td>
							<td><form:input path="lastName" /></td>
						</tr>
						<tr>
							<td><label>Email:</label></td>
							<td><form:input path="email" /></td>
						</tr>
						<tr>
							<td><label></label></td>
							<td><input type="submit" value="Save" class="save" /></td>
						</tr>

					</tbody>
				</table>
			</form:form>
			<div style="">
				<p>
					<a href="${pageContext.request.contextPath}/customer/list">Back
						to List</a>
				</p>
			</div>
		</div>

	</div>
</body>
</html>