<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
    Daniel Fryer
    Assignment 3.2
    8/30/2026
--%>

<%
     // Making a service feedback

     String title = "Super Duper Fantastic Service Feedback";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><%= title %></title>

</head>

<body>

    <h1 style="text-align: center;">Please give your feedback for the Super Duper Fantastic Service company.</h1>

    <form action="feedback.jsp" method="post">
        <table border="1" style="margin: auto;">
            <!-- Get a text box so the person can enter their name -->
            <tr>
                <td>
                    <label>Name:</label>
                </td>
                <td>
                    <input type="text" id="name" name="name">
                </td>
            </tr>
            <!-- Get a date field to get the date user used the service -->
            <tr>
                <td>
                    <label>Date of Service:</label>
                </td>
                <td>
                    <input type="date" id="serviceDate" name="date">
                </td>
            </tr>
            <!-- Dropdown to get the service they used -->
            <tr>
                <td>
                    <label>Service provided</label>
                </td>
                <td>
                    <select id="service" name="service">
                        <option value="cleaning">Cleaning</option>
                        <option value="tutor">Tutoring</option>
                        <option value="taxes">Taxes</option>
                </td>
            </tr>
            <!-- Radio button to get service level -->
            <tr>
                <td>
                    <label>Rate the service</label>
                </td>
                <td>
                    <input type="radio" name="serviceLevel" id="best" value="Best"><label>Best</label><br>
                    <input type="radio" name="serviceLevel" id="Ok" value="Ok"><label>Ok</label><br>
                    <input type="radio" name="serviceLevel" id="bad" value="Bad"><label>Bad</label><br>
                    <input type="radio" name="serviceLevel" id="hotgarbage" value="Hot Garbage"><label>Hot Garbage</label><br>
                </td>
            </tr>
            <!-- Checkboxes to get which areas the user enjoyed -->
            <tr>
                <td>
                    <label>What area did we meet your expectations</label>
                </td>
                <td>
                    <input type="checkbox" name="expectation" id="friendly" value="Friendly Staffing"><label>Friendly Staffing</label><br>
                    <input type="checkbox" name="expectation" id="cost" value="Price"><label>Price</label><br>
                    <input type="checkbox" name="expectation" id="snacks" value="Snacks"><label>Snacks in the waiting room</label><br>
                    <input type="checkbox" name="expectation" id="radio" value="Music"><label>Music in the office</label><br>
                </td>
            </tr>
            <!-- buttons to submit and clear -->
            <tr>
                <td colspan="2">
                    <input type="submit" value="Submit Feedback">
                    <input type="reset" value="Clear Form">
                </td>
            </tr>
        </table>
    </form>

</body>
</html>