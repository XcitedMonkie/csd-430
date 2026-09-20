<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="beans.Movie" %>
<%@ page import="java.util.ArrayList" %>

<%--
    Daniel Fryer
    Assignment 7
    9/19/2026
--%>

<%
    // Setting up the variables to use inside the HTML page
    String title = "Movies Home";
    String description = "Movie information";

%>

<!DOCTYPE html>

<html>

<head>
    <meta charset="UTF-8">

    <!-- Put the Page Title in passing in the title variable -->
    <title><%= title %></title>

    <!-- Link the CSS style sheet -->
    <link rel="stylesheet" type="text/css" href="fryer.css">
</head>

<body>

    <h1><%= title %></h1>

    <p><%= description %></p>

    

    <!-- Buttons to go to the different assignments -->
    <p>
    
        <form action="DropdownSelect.jsp" method="get">
            <input class="addMovieButton" type="submit" value="Mod 5/6 Assignment">
        </form>
        <br>
        <form action="addMovie.jsp" method="get">
            <input class="addMovieButton" type="submit" value="Mod 7 Assignment">
        </form>

    </p>

</body>

</html>