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


<!-- Keyboard Code start -->
<link href="web_resources/theme/css/jquery-ui.min.css" rel="stylesheet">
<link href="web_resources/theme/css/keyboard.css" rel="stylesheet">


<link href="web_resources/theme/css/bootstrap.css" rel="stylesheet">
<link href="web_resources/theme/css/bootstrap-responsive.css"
	rel="stylesheet">
<title>Sign Up Form</title>

<style type="text/css">
.wrapper {
	width: 500px;
	margin-left: auto;
	margin-right: auto
}

label {
	padding-left: 0 !important
}

.invalid-form-error-message {
	margin-top: 10px;
	padding: 5px;
}

.invalid-form-error-message.filled {
	border-left: 2px solid red;
}

.parsley-errors-list li {
	color: #B94A48;
	background-color: #F2DEDE;
	border: 1px solid #EED3D7;
	margin: 5px;
}
</style>



</head>
<body onload="DrawCaptcha();">
	<center>
		<div class="container">

			<form class="form-horizontal" id="signUpForm" name="signUpForm"
				method="post" action="signUp" >
				<legend>Registration Form</legend>

				<table class="table table-striped " style="width: auto;">
					<tr>
						<td style="white-space: nowrap"><form:label for="username"
								path="user.userName">Username</form:label></td>
						<td><form:input id="username" name="username"
								path="user.userName" data-parsley-required="true"
								data-parsley-type="alphanum" data-parsley-length="[6, 15]"
								data-parsley-length-message="Username should be between 6 to 15 characters" />

							<form:errors class="alert alert-danger" path="user.userName" /></td>
					</tr>

					<tr>
						<td style="white-space: nowrap"><form:label for="password"
								path="user.password">Password</form:label></td>
						<td><form:input id="password" name="password" type="password"
								path="user.password" data-parsley-required="true"
								data-parsley-type="alphanum" data-parsley-length="[6, 15]"
								data-parsley-length-message="Password should be between 6 to 15 characters" />

							<form:errors class="alert alert-danger" path="user.password" /></td>
					</tr>

					<tr>
						<td style="white-space: nowrap"><label for="confirmPassword">Confirm
								Password</label></td>
						<td><input id="confirmPassword" name="confirmPassword"
							type="password" data-parsley-required="true" data-parsley-type="alphanum"
							data-parsley-length="[6, 15]" data-parsley-equalto="#password"
							data-parsley-equalto-message="Paswords didnt match"
							data-parsley-length-message="Confirm Password should be between 6 to 15 characters" />

						</td>
					</tr>

					<tr>
						<td style="white-space: nowrap"><form:label for="fname"
								path="user.firstName">First Name</form:label></td>
						<td><form:input path="user.firstName" id="fname" name="fname"
								data-parsley-required="true" data-parsley-pattern="[a-zA-Z ]+" data-parsley-length="[1, 15]" />
							<form:errors class="alert alert-danger" path="user.firstName" /></td>
					</tr>
					<tr>
						<td style="white-space: nowrap"><form:label for="mname"
								path="user.middleName">Middle(M I)</form:label></td>
						<td><form:input path="user.middleName" id="mname"
								name="mname" data-parsley-pattern="[a-zA-Z ]*" data-parsley-length="[0, 15]"/></td>
					</tr>
					<tr>
						<td style="white-space: nowrap"><form:label
								path="user.lastName">Last Name</form:label></td>
						<td><form:input path="user.lastName" id="lname" name="lname"
								data-parsley-required="true" data-parsley-pattern="[a-zA-Z ]+" data-parsley-length="[1, 15]" />
							<form:errors class="alert alert-danger" path="user.lastName" /></td>
					</tr>
					<tr>
						<td style="white-space: nowrap"><form:label for="gender"
								path="user.gender">Gender</form:label></td>
						<td><form:select name="gender" path="user.gender"
								data-parsley-required="true">
								<form:option value="" label="--- Select ---" />
								<form:option value="Male" label="Male" />
								<form:option value="Female" label="Female" />
							</form:select> <form:errors class="alert alert-danger" path="user.gender" /></td>
					</tr>
					<tr>
						<td style="white-space: nowrap"><form:label for="ssn"
								path="user.userpii.ssn">SSN</form:label></td>
						<td><form:input type="number" name="ssn" path="user.userpii.ssn"
								id="ssn" data-parsley-required="true" data-parsley-type="digits"
								data-parsley-length="[9, 9]"
								data-parsley-length-message="Should be 9 digits" /> <form:errors
								class="alert alert-danger" path="user.userpii.ssn" /></td>
					</tr>

					<tr>
						<td style="white-space: nowrap"><form:label for="dob"
								path="user.userpii.DateOfBirth">Date of Birth</form:label></td>
						<td><form:input name="dob" type="text"
								data-parsley-trigger="change" placeholder="MM/DD/YYYY"
								data-date-format="MM/DD/YYYY" data-date-minDate="01/01/1900"
								data-parsley-mindate="01/01/1900" data-parsley-required="true"
								path="user.userpii.DateOfBirth" /> <form:errors
								class="alert alert-danger" path="user.userpii.DateOfBirth" /></td>
					</tr>
					<tr>
						<td style="white-space: nowrap"><form:label for="address"
								path="user.address">Address</form:label></td>
						<td><form:textarea rows="3" cols="30" name="address"
								path="user.address" id="address" data-parsley-required="true"
								data-parsley-pattern="[a-zA-Z0-9 #]+"
								data-parsley-length="[5, 50]"
								data-parsley-length-message="Address should be between 5 to 50 characters" />
							<form:errors class="alert alert-danger" path="user.address" /></td>
					</tr>

					<tr>
						<td style="white-space: nowrap"><form:label for="city"
								path="user.city">City</form:label></td>
						<td><form:input path="user.city" id="city" name="city"
								data-parsley-required="true" data-parsley-pattern="[a-z A-Z]+" data-parsley-length="[1, 15]"/>
							<form:errors class="alert alert-danger" path="user.city" /></td>
					</tr>

					<tr>
						<td style="white-space: nowrap"><form:label for="state"
								path="user.state">State</form:label></td>
						<td><form:input name="state" path="user.state" id="state"
								data-parsley-required="true" data-parsley-pattern="[a-z A-Z]+" data-parsley-length="[1, 15]"/>
							<form:errors class="alert alert-danger" path="user.state" /></td>
					</tr>

					<tr>
						<td style="white-space: nowrap"><form:label for="country"
								path="user.country">Country</form:label></td>
						<td><form:input name="country" path="user.country"
								id="country" data-parsley-required="true"
								data-parsley-pattern="[a-z A-Z]+"  data-parsley-length="[1, 15]"/> <form:errors
								class="alert alert-danger" path="user.country" /></td>
					</tr>
					<tr>
						<td style="white-space: nowrap"><form:label for="zip"
								path="user.zipcode">ZIP</form:label></td>
						<td><form:input name="zip" path="user.zipcode" id="zip"
								data-parsley-required="true" data-parsley-type="digits"
								data-parsley-length="[5, 5]"
								data-parsley-length-message="Should be 5 digits" /> <form:errors
								class="alert alert-danger" path="user.zipcode" /></td>
					</tr>



					<tr>
						<td style="white-space: nowrap"><form:label for="roleid"
								path="user.roleId">Role</form:label></td>
						<td><form:select name="roleid" path="user.roleId"
								data-parsley-required="true">
								<form:option value="" label="--- Select ---" />
								<form:option value="1" label="Individual" />
								<form:option value="2" label="Organization/Merchant" />
							</form:select> <form:errors class="alert alert-danger" path="user.roleId" /></td>
					</tr>
					<tr>
						<td style="white-space: nowrap"><form:label for="phonenumber"
								path="user.phoneNumber">Phone Number</form:label></td>
						<td><form:input path="user.phoneNumber" id="phno" name="phonenumber"
								data-parsley-required="true" data-parsley-type="digits"
								data-parsley-length="[10, 10]"
								data-parsley-length-message="Should be 10 digits" /> <form:errors
								class="alert alert-danger" path="user.phoneNumber" /></td>
					</tr>
					<tr>
						<td style="white-space: nowrap"><form:label for="email"
								path="user.emailId">Email</form:label></td>
						<td><form:input type="email" name="email" data-parsley-required="true"
								data-parsley-type="email" path="user.emailId" id="email" data-parsley-length="[1, 25]" /> <form:errors
								class="alert alert-danger" path="user.emailId" /></td>
					</tr>


					<tr>
						<td><b>Captcha</b></td>
						<td><input type="text" id="txtInput" /> &nbsp;&nbsp;<input
							type="text" id="txtCaptcha"
							style="background-image: url(/sbs/web_resources/img/1.jpg); text-align: center; border: none; font-weight: bold; font-family: Modern" />


						</td>

					</tr>

					<tr>
						<td>&nbsp;</td>
						<td><input id="Button1" class="btn btn-info btn-xs"
							type="button" value="Validate Captcha to enable Submit"
							onclick="ValidCaptcha();" /> &nbsp; &nbsp; <input type="button"
							class="btn btn-info btn-xs" id="btnrefresh" value="Refresh"
							onclick="DrawCaptcha();" /></td>
					</tr>
					<tr>
					<td>&nbsp;</td>
						<td ><input id='submitbutton' class="btn"
							type="submit" value="Submit" /> &nbsp;&nbsp;&nbsp;
						<a id="cancel" class="btn" href="login"
							type="button">Cancel</a></td>
					</tr>

				</table>

				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</center>
	<script src="web_resources/theme/js/jquery.min.js"></script>
	<script src="web_resources/theme/js/jquery-ui.min.js"></script>
	<script src="web_resources/theme/js/bootstrap.min.js"></script>

	<!-- keyboard widget css & script (required) -->

	<script src="web_resources/theme/js/jquery.keyboard.js"></script>

	<!-- keyboard extensions (optional) -->
	<script src="web_resources/theme/js/jquery.mousewheel.js"></script>
	<script src="web_resources/theme/js/parsley.min.js"></script>

	<!-- initialize keyboard (required) -->
	<script>
		$(function() {
			$('#username').keyboard();
			$('#password').keyboard();
			$('#confirmPassword').keyboard();

		});
 		$('#submitbutton').on('click', function() {
			 $('#signUpForm').parsley().validate();
			if (true == $('#signUpForm').parsley().isValid()) {
			} else {
				$('#submitbutton').attr('disabled', 'disabled');
			} 
		}); 
	</script>
	<!-- Keyboard Code end -->
	<script type="text/javascript">
		//Created / Generates the captcha function    
		function DrawCaptcha() {
			document.getElementById("txtCaptcha").readOnly = false;
			document.getElementById("submitbutton").disabled = true;
			var a = Math.ceil(Math.random() * 10) + '';
			var b = Math.ceil(Math.random() * 10) + '';
			var c = Math.ceil(Math.random() * 10) + '';
			var d = Math.ceil(Math.random() * 10) + '';
			var e = Math.ceil(Math.random() * 10) + '';
			var f = Math.ceil(Math.random() * 10) + '';
			var g = Math.ceil(Math.random() * 10) + '';
			var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' '
					+ f + ' ' + g;
			document.getElementById("txtCaptcha").value = code;
			document.getElementById("txtCaptcha").readOnly = true;
			document.getElementById("txtInput").value = '';
		}

		// Validate the Entered input aganist the generated security code function   

		function ValidCaptcha() {
			var str1 = removeSpaces(document.getElementById('txtCaptcha').value);
			var str2 = removeSpaces(document.getElementById('txtInput').value);
			if (str1 == str2) {
				document.getElementById("submitbutton").disabled = false;
				document.getElementById("txtInput").value = '';
			} else {
				DrawCaptcha();
				document.getElementById("txtInput").value = '';
				document.getElementById("submitbutton").disabled = true;
			}
		}
		// Remove the spaces from the entered and generated code
		function removeSpaces(string) {
			return string.split(' ').join('');
		}
		window.Parsley.addValidator('mindate', function(value, requirement) {
			// is valid date?
			var timestamp = Date.parse(value), minTs = Date.parse(requirement);

			return isNaN(timestamp) ? false : timestamp > minTs;
		}, 32).addMessage('en', 'mindate',
				'This date should be greater than %s');
	</script>
</body>
</html>