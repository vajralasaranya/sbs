<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="web_resources/theme/css/bootstrap.css" rel="stylesheet">
<link href="web_resources/theme/css/bootstrap-responsive.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Secure Bank System | Notification</title>

<style>
table tr td:empty {
	width: 50px;
}

table tr td {
	padding-top: 10px;
	padding-bottom: 10px;
}
</style>

</head>
<body>
	<center>
	<br>
		<div style="color: teal; font-size: 30px">Secure Bank System |
			Notifications</div>

		<br> <br> <br>
		<form:form class="form-horizontal" id="notificationsForm" action=""
			method="post" modelAttribute="form">
			<c:if test="${!empty notificationRows}">

				<table border="1" bgcolor="black" width="auto">
					<tr
						style="background-color: teal; color: white; text-align: center;"
						height="40px">
						<td><b>&nbsp;</b></td>
						<td><b>Request Type</b></td>
						<td><b>Request Description</b></td>
						<td><b>Requested Date</b></td>
						<td><b>Requester UserId</b></td>
						<td><b>Request Status</b></td>
						<td><b>Approver UserId</b></td>
					</tr>
					<c:forEach items="${notificationRows}" var="eachnotification">
						<tr
							style="background-color: white; color: black; text-align: center;"
							height="30px">
							<td><form:radiobutton path="map['authorizationId']"
									value="${eachnotification.authorizationId}" /></td>
							<td><c:out value="${eachnotification.requestType}" /></td>
							<td><c:out value="${eachnotification.requestDescription}" /></td>
							<td><c:out
									value="${eachnotification.requestCreationTimeStamp}" /></td>
							<td><c:out value="${eachnotification.authorizedByUserId}" /></td>
							<td><c:out value="${eachnotification.requestStatus}" /></td>
							<td><c:out value="${eachnotification.authorizedToUserId}" /></td>


						</tr>
					</c:forEach>

				</table>
			
			<input id="approve" type="submit" class="btn btn-success"
				value="Approve" />
			<input id="reject" type="submit" class="btn btn-danger"
				value="Reject" />

			<input id="forward" type="submit" class="btn btn-danger"
				value="Forward" />
			</c:if>
			<c:if test="${empty notificationRows}"><br>
			<h2>You do not have any Notifications</h2><br>
			</c:if>
			<input class ="btn"  type="submit" id="cancel" value="Cancel" />
		</form:form>



	</center>

	<!-- jQuery -->
	<script src="web_resources/theme/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="web_resources/theme/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$('#approve').click(function() {
			$('#notificationsForm').attr("action", "approvenotification");
		});
		$('#reject').click(function() {
			$('#notificationsForm').attr("action", "rejectnotification");
		});
		$('#forward').click(function() {
			$('#notificationsForm').attr("action", "forwardnotification");
		});
		$('#cancel').click(function() {
			$('#notificationsForm').attr("action", "goBack");
		});
	</script>

</body>
</html>