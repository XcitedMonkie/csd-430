<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="beans.Movie" %>
<%@ page import="java.util.ArrayList" %>

<%--
    Daniel Fryer
    Assignment 7 - insert / display 
    9/19/2026
--%>

<%
    // Setting up the variables to use inside the HTML page
    String title = "Insert a new Movie";
    String description = "Inserting a new Movie into the Database";

     // Checking to see if the form was submitted
    if ("POST".equalsIgnoreCase(request.getMethod()))
    {
        // Get the information entered into the form
        String movieTitle = request.getParameter("movieTitle");
        String genre = request.getParameter("genre");
        int yearReleased = Integer.parseInt(request.getParameter("yearReleased"));
        String director = request.getParameter("director");
        String studio = request.getParameter("studio");

        // Create a new movie object with the information from the form
        Movie newMovie = new Movie(
            movieTitle,
            genre,
            yearReleased,
            director,
            studio
        );

        // Add the new movie to the database
        Movie.addMovie(newMovie);
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

    <h2>Enter New Movie</h2>

    <p>
        Enter the movie information below.
    </p>

    <!-- Form to collect the information for a new movie -->
    <form action="addMovie.jsp" method="post">

        <p>
            <label for="movieTitle">Movie Title:</label>
            <input type="text" id="movieTitle" name="movieTitle" required>
        </p>

        <p>
            <label for="genre">Genre:</label>
            <input type="text" id="genre" name="genre" required>
        </p>

        <p>
            <label for="yearReleased">Year Released:</label>
            <input type="number" id="yearReleased" name="yearReleased" required>
        </p>

        <p>
            <label for="director">Director:</label>
            <input type="text" id="director" name="director" required>
        </p>

        <p>
            <label for="studio">Studio:</label>
            <input type="text" id="studio" name="studio" required>
        </p>

        <input class="insertMovie" type="submit" value="Add Movie">

    </form>

    <!-- Display the table with all the movies from the database -->
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
                <%
                    ArrayList<Movie> movies = Movie.getAllMovies();
                    for(Movie movie : movies)
                    {
                %>
                <tr>
                    <td><%= movie.getMovieID() %></td>
                    <td><%= movie.getTitle() %></td>
                    <td><%= movie.getGenre() %></td>
                    <td><%= movie.getYearReleased() %></td>
                    <td><%= movie.getDirector() %></td>
                    <td><%= movie.getStudio() %></td>
                </tr>
                <% 
                    }
                %>
            </tbody>

        </table>

    <!-- Button to go back to the home page -->
    <p>
    <form action="index.jsp" method="get">
        <input class="addMovieButton" type="submit" value="Return Home">
    </form></p>

</body>

</html>