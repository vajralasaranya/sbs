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
<link href="web_resources/theme/css/bootstrap-responsive.css" rel="stylesheet">

<title>Sign Up Form for new Customer</title>

<style type="text/css">
.wrapper {
	width: 500px;
	margin-left: auto;
	margin-right: auto
}

label {
	padding-left: 0 !important
}
</style>

</head>
<body>

	<center>
		<h3>Welcome, Enter Customer Details</h3>
		<form id="signUpForm" method="post" action="signUpExternalUser">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<table width="400px" height="150px">

				<tr>
					<td><form:label path="user.userName">Username</form:label></td>
					<td><form:input path="user.userName" /></td>
					<td class="error"><form:errors path="user.userName" /></td>

				</tr>
				<tr>
					<td><form:label path="user.password">Password</form:label></td>
					<td><form:input type="password" path="user.password" /></td>
					<td class="error"><form:errors path="user.password" /></td>
				</tr>
				<tr>
					<td><form:label path="user.firstName">First Name</form:label></td>
					<td><form:input path="user.firstName" /></td>
					<td class="error"><form:errors path="user.firstName" /></td>
				</tr>
				<tr>
					<td><form:label path="user.middleName">Middle(M I)</form:label></td>
					<td><form:input path="user.middleName" /></td>
				</tr>
				<tr>
					<td><form:label path="user.lastName">Last Name</form:label></td>
					<td><form:input path="user.lastName" /></td>
					<td class="error"><form:errors path="user.lastName" /></td>
				</tr>

				<tr>
					<td><form:label path="user.gender">Gender</form:label></td>
					<td><form:select path="user.gender">
							<form:option value="NONE" label="--- Select ---" />
							<form:option value="M" label="Male" />
							<form:option value="F" label="Female" />
						</form:select></td>
					<td class="error"><form:errors path="user.gender" /></td>
				</tr>
				<tr>
					<td><form:label path="user.roleId">Role</form:label></td>
					<td><form:select path="user.roleId">
							<form:option value="-1" label="--- Select ---" />
							<form:option value="5" label="Individual" />
							<form:option value="4" label="Organization/Merchant" />
						</form:select></td>
					<td class="error"><form:errors path="user.roleId" /></td>
				</tr>

				<tr>
					<td><form:label path="user.phoneNumber">Phone Number</form:label></td>
					<td><form:input path="user.phoneNumber" /></td>
					<td class="error"><form:errors path="user.phoneNumber" /></td>

				</tr>
				<tr>
					<td><form:label path="user.emailId">Email</form:label></td>
					<td><form:input path="user.emailId" /></td>
					<td class="error"><form:errors path="user.emailId" /></td>

				</tr>
				<tr>
					<td><form:label path="userpii.ssn">SSN</form:label></td>
					<td><form:input path="userpii.ssn" /></td>
					<td class="error"><form:errors path="userpii.ssn" /></td>

				</tr>

	<div class="container">

		<form class="form-horizontal" id="signUpForm" method="post"
			action="signUpExternalUser">
			<fieldset>
				<legend>Registration Form</legend>
				<div class="control-group">

					<form:label class="control-label" path="user.userName">Username</form:label>
					<form:input class="controls" path="user.userName" />
					<form:errors class="alert alert-danger" path="user.userName" />

				</div>

				<div class="control-group">
					<form:label class="control-label " path="user.password">Password</form:label>
					<form:input class="controls " type="password" path="user.password" />
					<form:errors class="alert alert-danger" path="user.password" />
				</div>
				<div class="control-group">
					<form:label class="control-label" path="user.firstName">First Name</form:label>
					<form:input class="controls" path="user.firstName" />
					<form:errors class="alert alert-danger" path="user.firstName" />
				</div>
				<div class="control-group">
					<form:label class="control-label" path="user.middleName">Middle(M I)</form:label>
					<form:input class="controls" path="user.middleName" />
				</div>
				<div class="control-group">
					<form:label class="control-label" path="user.lastName">Last Name</form:label>
					<form:input class="controls" path="user.lastName" />
					<form:errors class="alert alert-danger" path="user.lastName" />
				</div>
				<div class="control-group">
					<form:label class="control-label" path="user.gender">Gender</form:label>
					<form:select class="controls" path="user.gender">
						<form:option value="NONE" label="--- Select ---" />
						<form:option value="Male" label="Male" />
						<form:option value="Female" label="Female" />
					</form:select>
					<form:errors class="alert alert-danger" path="user.gender" />
				</div>
				<div class="control-group">
					<form:label class="control-label" path="userpii.ssn">SSN</form:label>
					<form:input class="controls" path="userpii.ssn" />
					<form:errors class="alert alert-danger" path="userpii.ssn" />

				</div>
				
				<div class="control-group">
					<form:label class="control-label" path="userpii.DateOfBirth">Date of Birth</form:label>
					<form:input type="date" class="controls" path="userpii.DateOfBirth" />
					<form:errors class="alert alert-danger" path="userpii.DateOfBirth" />

				</div>
				<div class="control-group">
					<form:label class="control-label" path="user.address">Address</form:label>
					<form:textarea class="controls" rows="3" cols="30" path="user.address" />
					<form:errors class="alert alert-danger" path="user.address" />

				</div>
				
				<div class="control-group">
					<form:label class="control-label" path="user.city">City</form:label>
					<form:input class="controls" path="user.city" />
					<form:errors class="alert alert-danger" path="user.city" />
				</div>
				
				<div class="control-group">
					<form:label class="control-label" path="user.state">State</form:label>
					<form:input class="controls" path="user.state" />
					<form:errors class="alert alert-danger" path="user.state" />
				</div>
>>>>>>> d69b9501af8197b08f0b1632d8009a5957cf89f5
				
				<div class="control-group">
					<form:label class="control-label" path="user.country">Country</form:label>
					<form:input class="controls" path="user.country" />
					<form:errors class="alert alert-danger" path="user.country" />

				</div>
				<div class="control-group">
					<form:label class="control-label" path="user.zipcode">ZIP</form:label>
					<form:input class="controls" path="user.zipcode" />
					<form:errors class="alert alert-danger" path="user.zipcode" />

				</div>
				
				
				
				<div class="control-group">
					<form:label class="control-label" path="user.roleId">Role</form:label>
					<form:select class="controls" path="user.roleId">
						<form:option value="-1" label="--- Select ---" />
						<form:option value="0" label="Individual" />
						<form:option value="1" label="Organization/Merchant" />
					</form:select>
					<form:errors class="alert alert-danger" path="user.roleId" />
				</div>
				<div class="control-group">
					<form:label class="control-label" path="user.phoneNumber">Phone Number</form:label>
					<form:input class="controls" path="user.phoneNumber" />
					<form:errors class="alert alert-danger" path="user.phoneNumber" />
				</div>
				<div class="control-group">
					<form:label class="control-label" path="user.emailId">Email</form:label>
					<form:input class="controls" type="email" path="user.emailId" />
					<form:errors class="alert alert-danger" path="user.emailId" />
				</div>
				<div class="control-group">
					<div class="controls">
						<input class="btn  btn-primary " type="submit" value="Submit" />
						<input class="btn  btn-primary " type="button" value="Cancel" />
					</div>
				</div>



				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</fieldset>
		</form>
	</div>

</body>
</html>