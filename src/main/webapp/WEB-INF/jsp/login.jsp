<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setBundle basename="messages" />
<%@ page session="true"%>
<fmt:message key="message.password" var="noPass" />
<fmt:message key="message.username" var="noUser" />
<c:if test="${param.error != null}">
  <c:choose>
    <c:when
      test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'User is disabled'}">
      <div class="alert alert-danger">
        <spring:message code="auth.message.disabled"></spring:message>
      </div>
    </c:when>
    <c:when
      test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'User account has expired'}">
      <div class="alert alert-danger">
        <spring:message code="auth.message.expired"></spring:message>
      </div>
    </c:when>
    <c:when test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'blocked'}">
      <div class="alert alert-danger">
        <spring:message code="auth.message.blocked"></spring:message>
      </div>
    </c:when>
    <c:otherwise>
      <div class="alert alert-danger">
        <!-- <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/> -->
        <spring:message code="message.badCredentials"></spring:message>
      </div>
    </c:otherwise>
  </c:choose>
</c:if>
<html>
  <head>
 <link href="web_resources/theme/css/jquery-ui.min.css" rel="stylesheet"> 
	<script src="web_resources/theme/js/jquery.min.js"></script>
	<script src="web_resources/theme/js/jquery-ui.min.js"></script>
	<script src="web_resources/theme/js/bootstrap.min.js"></script>

	<!-- keyboard widget css & script (required) -->
	<link href="web_resources/theme/css/keyboard.css" rel="stylesheet">
	<script src="web_resources/theme/js/jquery.keyboard.js"></script>

	<!-- keyboard extensions (optional) -->
	<script src="web_resources/theme/js/jquery.mousewheel.js"></script>
	
	<!-- initialize keyboard (required) -->
	<script>
		$(function(){
		$("input[id^='keyboard']").keyboard();
			<!-- $('#keyboard').keyboard(); -->
		});
	</script>
<link href="web_resources/theme/css/bootstrap.css" rel="stylesheet">
<link href="web_resources/theme/css/bootstrap-responsive.css" rel="stylesheet">
    <title>
      <spring:message code="label.pages.home.title"></spring:message>
    </title>
    <script type="text/javascript">
      function validate() {
          if (document.f.j_username.value == ""
                  && document.f.j_password.value == "") {
              alert("${noUser} & ${noPass}");
              document.f.j_username.focus();
              return false;
          }
          if (document.f.j_username.value == "") {
              alert("${noUser}");
              document.f.j_username.focus();
              return false;
          }
          if (document.f.j_password.value == "") {
              alert("${noPass}");
              document.f.j_password.focus();
              return false;
          }
      }
    </script>
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
    <c:if test="${param.message != null}">
      <div class="alert alert-info">${param.message}</div>
    </c:if>
    <div class="container">
      <div class="row wrapper">
        <h1>
          <spring:message code="label.form.loginTitle"></spring:message>
        </h1>
        <br> <br>
        <form name='f' action="j_spring_security_check" method='POST'
          onsubmit="return validate();">
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
          <label class="col-sm-4">
            <spring:message	code="label.form.userName"></spring:message>
          </label>
          <span class="col-sm-8"> 
          <input id="keyboard" class="form-control" type='text' name='username' value=''>
          </span> 
          <br> <br> 
          <label class="col-sm-4">
            <spring:message	code="label.form.loginPass"> </spring:message>
          </label>
          <span class="col-sm-8"> <input class="form-control"
            id="keyboard" type='password' name='password' />
          </span> <br> <br> <input class="btn btn-primary" name="submit"
          type="submit"
          value=<spring:message code="label.form.submit"></spring:message> />
          
        </form>
        <a class="btn btn-default" href="
        <c:url value="/signup.html" />
        ">
        <spring:message
          code="label.form.loginSignUp"></spring:message>
        </a> 
        
        <a class="btn btn-default" href="
        <c:url value="/forgetPassword.html" />
        ">
        <spring:message
          code="label.form.forgetPassword"></spring:message>
        </a> 
      </div>
    </div>
  </body>
</html>