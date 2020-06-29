<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HyderabadList</title>
</head>
<body>
<div align="center">
<h1 style="color: green"><u>Hyderabad List</u></h1>
<h3>
<a href="new">Create new</a>
</h3>
<table border="1">
<tr>
<th>ID</th>
<th>NAME</th>
<th>EMAIL</th>
<th>ADDRESS</th>
<th>ACTION</th>
<th>QRCODE</th>
</tr>
<c:forEach var="asish" items="${hlist}">
<tr>
<td>${asish.id}</td>
<td>${asish.name}</td>
<td>${asish.email}</td>
<td>${asish.addrs}</td>
<td><a href="update?id=${asish.id}"><img src="https://icons.iconarchive.com/icons/bokehlicia/pacifica/256/system-software-update-icon.png" height=30 width=30></a>&nbsp;<a href="delete?id=${asish.id}"><img src="https://pngimage.net/wp-content/uploads/2018/05/delete-png-icon-1.png" height=30 width=30></a></td>
<td>
					<img src="${pageContext.request.contextPath }/qrcode/${asish.name} ${asish.email}" width="100" height="100">
</td>
</tr>
</c:forEach>
</table>
</div>

</body>
</html>