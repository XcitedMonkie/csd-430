<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
    Daniel Fryer
    Assignment 2.2
    8/22/2026
--%>

<%
    // Setting up the variables to use inside the HTML page

    // Main page overview title and description
    String title = "State I enjoyed visiting: Florida";
    String description = "This page will be dedicated to placed and activites I enjoy doing while in Florida.";

    // Table column description variables
    String locDesc = "Location - The city or attraction visited.";
    String categoryDesc = "Category - The type of location.";
    String activityDesc = "Favorite Activity - Something I enjoyed doing at the location.";

    // Create an array to hold the 5 rows of data to load into the table
    String[][] tableData = {
        {"Walt Disney World", "Theme Park", "Watching my wife and son enjoy all the sights and sounds"},
        {"Universal Orlando", "Theme Park", "Visiting the Wizarding World of Harry Potter"},
        {"Punta Gorda", "City", "Brother lives here so spending time with family"},
        {"Caspersen Beach", "Beach", "Looking for shark teeth in the sand."},
        {"Treasure Island", "Resort", "Shopping and food"}
    };
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
        <p><%= categoryDesc %></p>
        <p><%= activityDesc %></p>

        <!-- start to show the table -->
        <h2>Florida Travel Records</h2>

        <!-- setup the table headers -->
        <table>
            <thead>
                <tr>
                    <th>Location</th>
                    <th>Category</th>
                    <th>Favorite Activity</th>
                </tr>
            </thead>

            <tbody>

            <%
                // Looping through the array and populate the table with the data from the array
                for (int i = 0; i < tableData.length; i++) 
                {
            %>

                <tr>
                    <td><%= tableData[i][0] %></td>
                    <td><%= tableData[i][1] %></td>
                    <td><%= tableData[i][2] %></td>
                </tr>

            <%
                }
            %>

            </tbody>
        </table>

    </div>

</body>
</html>