<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
    Daniel Fryer
    Assignment 3 feedback
    8/30/2026
--%>

<%
    // Set the variables from the form to use here

    String name = request.getParameter("name");
    String date = request.getParameter("date");
    String service = request.getParameter("service");
    String serviceLevel = request.getParameter("serviceLevel");
    String[] expectation = request.getParameterValues("expectation");

    String title = "Feedback Results";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><%= title %></title>

</head>

<body>
    <h1 style="text-align: center;"><%= title%></h1>

    <!-- Table to display the form results -->
    <table border="1" style="margin: auto;">
        <tr>
            <th>
                Field
            </th>
            <th>
                Field Description
            </th>
            <th>
                Value
            </th>
        </tr>
        <tr>
            <td>
                Name
            </td>
            <td>
                The name of the user who submitted the form
            </td>
            <td>
                <%= name %>
            </td>
        </tr>
        <tr>
            <td>
                Date
            </td>
            <td>
                Date form was from
            </td>
            <td>
                <%= date %>
            </td>
        </tr>
        <tr>
            <td>
                Service
            </td>
            <td>
                What was the service that was provided
            </td>
            <td>
                <%= service %>
            </td>
        </tr>
        <tr>
            <td>
                Service Level
            </td>
            <td>
                How did the user rate their service
            </td>
            <td>
                <%= serviceLevel %>
            </td>
        </tr>
        <tr>
            <td>
                Expectations
            </td>
            <td>
                Which expectations the user enjoyed
            </td>
            <td>
                <% for (int i = 0; i < expectation.length; i++) 
                { %> 
                    <div><%= expectation[i] %></div>
                    <% 
                } 
                %>
            </td>
        </tr>
    </table>
   
</body>
</html>