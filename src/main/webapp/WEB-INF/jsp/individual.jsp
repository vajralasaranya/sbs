<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="web_resources/theme/css/bootstrap.css" rel="stylesheet">
<link href="web_resources/theme/css/bootstrap-responsive.css"
	rel="stylesheet">

<title>Individual User homepage</title>
<style>
div.individualuserdetails
{
	margin-top:50px;
    float: left;
    vertical-align:left;
    width: 250px;
    height:1000px;
}
div.heading
{
 	margin-left: 250px;
    margin-right: 3px;
    float: center;
  	width: 150px;
    height:100px;
}
</style>
</head>
<body>

	<div class="individualuserdetails">
		
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<table width="400px" height="150px">
			<tr>
		<td><a href="notifications.jsp" id="notifications">Profile</a>
		</td>
		</tr>
		<tr>
		<td><a href="notifications.jsp" id="notifications">Credit</a>
		</td>
		</tr>
		<tr>
		<td><a href="notifications.jsp" id="notifications">Debit</a>
		</td>
		</tr>
		<tr>
		<td>
		<a href="notifications.jsp" id="notifications">Raise Request</a>
		</td>
		</tr>
		<tr>
		<td><a href="notifications.jsp" id="notifications">Transfer</a>
		</td>
		</tr>
		<tr>
		<td><a href="notifications.jsp" id="notifications">Account Summary</a>
		</td>
		</tr>
			</table>
	</div>
	<div class="heading">
	<h1>UserHomePage</h1>
	</div>
</body>
</html>