
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Module 1.3 Assignment</title>
</head>
<body>

    <%--HTML Examples--%>
    <h1>Testing the setup of Tomcat and Java</h1>
    <p>Fryer</p>
    <p>Assignment 1.3</p>
    <p>8/16/2026</p>
    <%--Java examples setting a string name and then a simple calculation --%>
    <%
        String name = "Joel";
        int  costPerHour = 50;
        int hoursWorkedOnDansProblem = 3;
        int totalDanOwes = costPerHour * hoursWorkedOnDansProblem;
    %>

    <p>Hello, <%= name %>! Dan owes you the following</p>
    <p>$<%= costPerHour %> * <%= hoursWorkedOnDansProblem %> hours = $<%= totalDanOwes %></p>

</body>
</html>