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

<jsp:include page="header.jsp"></jsp:include>

<h1>Hello ${sessionScope.email} </h1>
<h3>Number of customers: ${sessionScope.size}</h3>
<h4>${sessionScope.mess}</h4>

<table>
    <tr>
        <th>Email</th>
        <th>password</th>
        <th>role</th>
        <th>Actions</th>
    </tr>
<c:choose>

    <c:when test="${sessionScope.IDToEdit == null}">


        <c:forEach var="element" items="${sessionScope.customermap}">
            <tr>
                <td>${element.email}</td>
                <td>${element.password}</td>
                <td>${element.role}</td>
                <td>
                    <form action="FrontController" method="POST">
                        <input type="submit" value="slet">
                        <input type="hidden" name="taget" value="deleteUser">
                        <input type="hidden" name="userID" value="${element.id}">
                    </form>
                    <form action="FrontController" method="POST">
                        <input type="submit" value="rediger">
                        <input type="hidden" name="taget" value="edit">
                        <input type="hidden" name="userID" value="${element.id}">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </c:when>
    <c:otherwise>

        <c:forEach var="element" items="${sessionScope.customermap}">
            <tr>
            <c:choose>
                <c:when test="${element.id == sessionScope.IDToEdit}">
                <form action="FrontController" method="POST">
                    <td><input type="text" value="${element.email}" name="editedEmail"></td>
                    <td><input type="text" value="${element.password}" name="editedPassword"></td>
                    <td>
                        <select name="editedRole">
                            <option value="customer">customer</option>
                            <option value="employee">employee</option>
                        </select>
                    </td>
                    <td>
                            <input type="submit" value="Gem">
                            <input type="hidden" name="taget" value="saveUser">
                            <input type="hidden" name="userID" value="${element.id}">
                        </form>
                    </td>
                </c:when>
                <c:otherwise>

                    <td>${element.email}</td>
                    <td>${element.password}</td>
                    <td>${element.role}</td>
                    <td>
                        <form action="FrontController" method="POST">
                            <input type="submit"  value="slet" disabled>
                        </form>
                        <form action="FrontController" method="POST">
                            <input type="submit" value="rediger" disabled>
                        </form>
                    </td>

                </c:otherwise>
            </c:choose>

            </tr>
        </c:forEach>

    </c:otherwise>
</c:choose>
</table>
</body>
</html>
