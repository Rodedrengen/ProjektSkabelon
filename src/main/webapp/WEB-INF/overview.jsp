<%--
  Created by IntelliJ IDEA.
  User: simon
  Date: 3/4/2020
  Time: 12:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Hello ${sessionScope.email} </h1>

<table>
    <tr>
        <th>Email</th>
        <th>password</th>
        <th>role</th>
        <th>Actions</th>
    </tr>

<c:forEach var="element" items="${sessionScope.customermap}">
    <tr>
        <td>${element.email}</td>
        <td>${element.password}</td>
        <td>${element.role}</td>
        <td><form action="FrontController" method="POST">
            <input type="submit" value="slet">
            <input type="hidden" name="taget" value="deleteUser">
            <input type="hidden" name="userID" value="${element.id}">
        </form></td>
    </tr>
</c:forEach>

</table>
</body>
</html>
