<%-- 
    Document   : employeepage.jsp
    Created on : Aug 24, 2017, 6:31:57 AM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee home page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

        <h1>Hello ${sessionScope.email} </h1>

        You are now logged in as a EMPLOYEE of our wonderful site.

        <form action="FrontController" method="POST">
            <input type="submit" value="oversigt">
            <input type="hidden" name="taget" value="overview">
        </form>

                <h3>Create new employee</h3>
                <form name="newemployee" action="FrontController" method="POST">
                    <input type="hidden" name="taget" value="newemployee">
                    Email:<br>
                    <input type="text" name="email" placeholder="email@email.com">
                    <br>
                    Password:<br>
                    <input type="password" name="password1" value="sesam">
                    <br>
                    Retype Password:<br>
                    <input type="password" name="password2" value="sesam">
                    <br>
                    <input type="submit" value="Submit">
                </form>

    <p>${sessionScope.employeemail}</p>


    </body>
</html>
