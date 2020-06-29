<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserting Elements</title>
</head>
<body>
<div align="center">
<h1 style="color: blue">New Elements</h1>
<form:form action="save" method="post" modelAttribute="hyderabad">
<table>
<form:hidden path="id"/>
<tr>
<td>ID:</td>
${asish.id}
<td><form:input path="id"/></td>
</tr>
<tr>
<td>NAME:</td>
<td><form:input path="name"/></td>
</tr>
<tr>
<td>EMAIL:</td>
<td><form:input path="email"/></td>
</tr>
<tr>
<td>ADDRESS:</td>
<td><form:input path="addrs"/></td>
</tr>
<tr>
 <td colspan="2" align="center"><input type="submit" value="Save"></td>
 </tr>
</table>
</form:form>
</div>
</body>
</html>