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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="web_resources/theme/css/bootstrap.css" rel="stylesheet">
<link href="web_resources/theme/css/bootstrap-responsive.css" rel="stylesheet">
<title>
<spring:message code="title.debit"></spring:message>
</title>
</head>
<body>
 <center>
  <br/><br/>
  <div style="color: teal; font-size: 30px">Debit Amount</div>
  <br/><br/>
  <form:form name="debitForm" id="debitForm"  method="post" modelAttribute="form" onsubmit="return OnSubmitForm();">
   <table width="700px" height="150px">
   <tr></tr>
    <tr>
     <td style="white-space: nowrap"><form:label path="fromAccount">From Account Number</form:label>
     </td>
     <td><form:input path="fromAccount" />
     </td>
     <td><form:errors class="alert alert-danger" path="fromAccount" /></td>
    </tr>
    <tr>
     <td style="white-space: nowrap"><form:label path="amount">Amount</form:label>
     </td>
     <td><form:input path="amount" />
     </td>
     <td><form:errors class="alert alert-danger" path="amount" /></td>
    </tr>
    <tr>
     <td style="white-space: nowrap"><form:label path="description">Transfer Description</form:label>
     </td>
     <td><form:input path="description" />
     </td>
    </tr>
    <tr> 
     <form:input type="hidden" path="transactionType" value="debit"/>
     <td><input type="submit"  onclick="document.pressed=this.value" value="Submit" /></td>
     <td><input type="submit"  onclick="document.pressed=this.value" value="Cancel" /></td>
     
    </tr>
   </table>
    <div><h2>${successfulMessage}</h2></div>
  </form:form>
 </center>
 
  <script type="text/javascript">
function OnSubmitForm()
{
  if(document.pressed == 'Submit')
  {
   document.debitForm.action ="debitAmount";
  }
  else
  if(document.pressed == 'Cancel')
  {
    document.debitForm.action ="goBack";
  }
  return true;
}
</script>
</body>
</html>

