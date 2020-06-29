<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Restaurant List</title>
</head>
<body style="background: url('https://www.setaswall.com/wp-content/uploads/2017/12/Black-Purple-Wallpaper-26-1920x1200.jpg');background-position: cover;background-repeat: no-repeat;">
<div align="center">
<h1 style="color: #0bff03"><i>RESTAURANT DETAILS</i></h1><br>
<h3><a href="new"><font color="yellow">Create new info</font></a></h3>
<table border="1" style="color: white;" >
<tr style="color: #03ffe6">
<th>ID</th>
<th>NAME</th>
<th>FAMOUS FOOD</th>
<th>CONTACT</th>
<th>ADDRESS</th>
<th>RATING</th>
<th>ACTION</th>
</tr>
<c:forEach var="asish" items="${rlist}">
<tr>
<td>${asish.id}</td>
<td>${asish.name}</td>
<td>${asish.famousFood}</td>
<td>${asish.contact}</td>
<td>${asish.addrs}</td>
<td>${asish.rating}</td>
<td><a href="update?id=${asish.id}"><img src="https://www.kindpng.com/picc/m/10-109532_intelligent-cloud-automation-update-cloud-icon-png-transparent.png" height=30 width="40"></a>&nbsp;<a href="delete?id=${asish.id}"><img src="https://cdn0.iconfinder.com/data/icons/icons-unleashed-vol1/256/-trash.png" height="30" width="40"></a></td>
</tr>
</c:forEach>
</table>
</div>

</body>
</html>