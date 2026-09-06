<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="beans.FloridaLocation" %>
<%@ page import="java.util.ArrayList" %>

<%--
    Daniel Fryer
    Assignment 4.2 use the bean
    9/5/2026
--%>

<%
    // Setting up the variables to use inside the HTML page

    // Main page overview title and description
    String title = "State I enjoyed visiting: Florida";
    String description = "This page will be dedicated to placed and activites I enjoy doing while in Florida.";

    // Table column description variables
    String locDesc = "Location - The city or attraction visited.";
    String cityDesc = "City - The City the attraction is closest to if the Location Desc isn't a city itself";
    String categoryDesc = "Category - The type of location.";
    String activityDesc = "Favorite Activity - Something I enjoyed doing at the location.";
    String rateDesc = "Rating - How this location/activity is rated out of 5";


    // the array of objects using the bean
    ArrayList<FloridaLocation> locations = new ArrayList<FloridaLocation>();

    locations.add(new FloridaLocation(
        "Disney World",
        "Orlando",
        "Theme Park",
        "Watching my wife and son enjoy all the sights and sounds",
        5
    ));

    locations.add(new FloridaLocation(
        "Universal Studio",
        "Orlando",
        "Theme Park",
        "Visiting the Wizarding World of Harry Potter",
        3
    ));
    
    locations.add(new FloridaLocation(
        "Punta Gorda",
        "Punta Gorda",
        "City",
        "Brother lives here so spending time with family",
        4
    ));

    locations.add(new FloridaLocation(
        "Caspersen Beach",
        "Venice",
        "Beach",
        "Looking for shark teeth in the sand.",
        5
    ));

    locations.add(new FloridaLocation(
        "Treasure Island",
        "St. Petersburg",
        "Resort",
        "Shopping and food",
        2
    ));
    
    
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

    <div class="container">
        <!-- Show the title as the H1 size -->
        <h1><%= title %></h1>

        <!-- Show what my page is overall about and added a photo -->
        <h2>Overall Description</h2>
        <div class="desc">
            <p><%= description %></p>
                <img src="Images/FloridaBeach.png"
                alt="Florida Beach"
                class="MainPhoto">        
        </div>

        <!-- Put my field description -->
        <h2>Field Descriptions</h2>

        <p><%= locDesc %></p>
        <p><%= cityDesc %></p>
        <p><%= categoryDesc %></p>
        <p><%= activityDesc %></p>
        <p><%= rateDesc %></p>

        <!-- start to show the table -->
        <h2>Florida Travel Records</h2>

        <!-- setup the table headers -->
        <table>
            <thead>
                <tr>
                    <th>Location</th>
                    <th>City</th>
                    <th>Category</th>
                    <th>Favorite Activity</th>
                    <th>Rating</th>
                </tr>
            </thead>

            <tbody>

            <%
                // Looping through the array and populate the table with the data from the array
                for (FloridaLocation location : locations)
                {
            %>

                <tr>
                    <td><%= location.getLocationName() %></td>
                    <td><%= location.getLocationCity() %></td>
                    <td><%= location.getCategory() %></td>
                    <td><%= location.getActivity() %></td>
                    <td><%= location.getRating() %></td>
                </tr>

            <%
                }
            %>

            </tbody>
        </table>

    </div>

</body>
</html>