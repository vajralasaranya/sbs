<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setBundle basename="messages" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-Frame-Options" content="allow">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="web_resources/theme/css/bootstrap.css" rel="stylesheet">
<link href="web_resources/theme/css/bootstrap-responsive.css"
	rel="stylesheet">
<title><spring:message code="title.credit"></spring:message></title>
</head>
<body>
	<center>
		<br /> <br />
		<div style="color: teal; font-size: 30px">Credit Amount</div>
		<br /> <br />
		<form:form id="viewExternalprofile" method="post"
			action="viewExternalprofileform" modelAttribute="form">
			<center>
				<table>
					<tr>
						<td style="white-space: nowrap"><form:label
								path="map['userName']">UserName</form:label></td>
						<td><form:input path="map['userName']" /></td>
						<td><form:errors class="alert alert-danger"
								path="map['userName']" /></td>
					</tr>

				</table>
				<br>
				<input type="submit" onclick="document.pressed=this.value"
					value="Submit" />
			</center>
		</form:form>
	</center>

</body>
</html>