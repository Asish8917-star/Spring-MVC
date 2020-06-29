<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>adding elements</title>
</head>
<body style="background: url('https://www.canva.com/learn/wp-content/uploads/2015/03/menu-psychology-design.jpg');background-position: cover;background-repeat: no-repeat;">
<div align="center">
<h1 style="color: #9f12e0">Creating New Information</h1><br>
<form:form action="save" method="post" modelAttribute="rest">
<table style="color: #03fff2">
<form:hidden path="id"/>
<tr>
<td>ID:</td>
<td><form:input path="id"/>
</td>
</tr>
<tr>
<td>NAME:</td>
<td><form:input path="name"/>
</td>
</tr>
<tr>
<td>FAMOUS FOOD:</td>
<td><form:input path="famousFood"/>
</td>
</tr>
<tr>
<td>CONTACT:</td>
<td><form:input path="contact"/>
</td>
</tr>
<tr>
<td>ADDRESS:</td>
<td><form:input path="addrs"/>
</td>
</tr>
<tr>
<td>RATING</td>
<td><form:input path="rating"/>
</td>
</tr>
<tr>
 <td colspan="2" align="center"><input type="submit" value="Save"></td>
 </tr>
</table>
</form:form>
</div>
</body>
</html>