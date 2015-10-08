<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Secure Bank System | Debit</title>
</head>
<body>
 <center>

  <div style="color: teal; font-size: 30px">Secure Bank System |
   Credit</div>
  <form:form id="debitForm"  method="post"
   action="debitAmount">
   <table width="400px" height="150px">
    <tr>
     <td><form:label path="fromAccountNumber">From Account Number</form:label>
     </td>
     <td><form:input path="fromAccountNumber" />
     </td>
    </tr>
    <tr>
     <td><form:label path="amount">Amount</form:label>
     </td>
     <td><form:input path="amount" />
     </td>
    </tr>
    <tr>
     <td><form:label path="transferDescription">Transfer Description</form:label>
     </td>
     <td><form:input path="transferDescription" />
     </td>
    </tr>
    <tr> 
     <td><input type="submit" value="Submit" /></td>
     <td><input type="button" value="Cancel" /></td>
    </tr>
   </table>
  </form:form>
 </center>
</body>
</html>
