<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update elements</title>
</head>
<body style="background: url('https://st3.depositphotos.com/18508348/32075/i/1600/depositphotos_320751730-stock-photo-biryani-rice-vegetable-biryani-indian.jpg');background-position: cover;background-repeat: no-repeat;">
<div align="center">
<h1 style="color: #03ff79">Updating Information</h1><br>
<form:form action="save" method="post" modelAttribute="rest">
<table style="color:#0379ff">
<form:hidden path="id"/>
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