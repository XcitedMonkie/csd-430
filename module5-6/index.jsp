<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="beans.Movie" %>
<%@ page import="java.util.ArrayList" %>

<%--
    Daniel Fryer
    Assignment 5.2-6.2
    9/12/2026
--%>

<%
    // Setting up the variables to use inside the HTML page
    String title = "Movies";
    String description = "Top 10 movies according to IMDB Main Page.";

    // Get the movie titles from the database
    ArrayList<String> movieTitles = Movie.getMovieTitle();

    // Get the selected movie title from the dropdown
    String selectedTitle = request.getParameter("movieTitle");

    Movie selectedMovie = null;

    // If a movie was selected, get its information from the database
    if (selectedTitle != null)
    {
        selectedMovie = Movie.getMovieByTitles(selectedTitle);
    }
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

    <h2>Select a Movie</h2>

    <p>
        Select a movie title from the dropdown menu below to view
        information about that movie.
    </p>

    <!-- drop down so the user can select which movie they want to see the details of -->
    <form action="index.jsp" method="post">

        <label for="movieTitle">Movie Title:</label>

        <select name="movieTitle" id="movieTitle">

            <% for (String movieTitle : movieTitles)
                { %>

                    <option value="<%= movieTitle %>"
                        <%= movieTitle.equals(selectedTitle) ? "selected" : "" %>>
                        <%= movieTitle %>
                    </option>

                <% } %>

        </select>

        <input type="submit" value="View Movie">

    </form>


    <!-- Check to see if the selected movie variable is null if it is we don't need to show the table -->
    <% if (selectedMovie != null)
    { %>

        <h2>Movie Details</h2>

        <p>
            The table below displays the information for the selected movie.
        </p>

        <!-- Create the table to display the information of the movie selected -->
        <table>

            <thead>
                <tr>
                    <th>Movie ID</th>
                    <th>Title</th>
                    <th>Genre</th>
                    <th>Year Released</th>
                    <th>Director</th>
                    <th>Studio</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td><%= selectedMovie.getMovieID() %></td>
                    <td><%= selectedMovie.getTitle() %></td>
                    <td><%= selectedMovie.getGenre() %></td>
                    <td><%= selectedMovie.getYearReleased() %></td>
                    <td><%= selectedMovie.getDirector() %></td>
                    <td><%= selectedMovie.getStudio() %></td>
                </tr>
            </tbody>

        </table>

    <% } %>

</body>

</html>