package beans;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;

/*
    Daniel Fryer
    Assignment 7 Bean
    9/19/2026
*/

public class Movie implements Serializable
{
    private int movieID;
    private String title;
    private String genre;
    private int yearReleased;
    private String director;
    private String studio;

    // Default constructor
    public Movie() 
    {
    }

    // Contructor to return everything including the MovieId
    public Movie(int movieID, String title, String genre, int yearReleased, String director, String studio) 
    {
        this.movieID = movieID;
        this.title = title;
        this.genre = genre;
        this.yearReleased = yearReleased;
        this.director = director;
        this.studio = studio;
    }

    // constructor to add a movie
    public Movie(String title, String genre, int yearReleased, String director, String studio)
    {
        this.title = title;
        this.genre = genre;
        this.yearReleased = yearReleased;
        this.director = director;
        this.studio = studio;
    }

    // Getters
    public int getMovieID() 
    {
        return movieID;
    }
    public String getTitle() 
    {
        return title;
    }
    public String getGenre() 
    {
        return genre;
    }
    public int getYearReleased() 
    {
        return yearReleased;
    }
    public String getDirector() 
    {
        return director;
    }
    public String getStudio() 
    {
        return studio;
    }

    // Setters
    public void setMovieID(int movieID) 
    {
        this.movieID = movieID;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }
    public void setGenre(String genre) 
    {
        this.genre = genre;
    }
    public void setYearReleased(int yearReleased) 
    {
        this.yearReleased = yearReleased;
    }
    public void setDirector(String director) 
    {
        this.director = director;
    }
    public void setStudio(String studio) 
    {
        this.studio = studio;
    }

    // Get the Names to return for the dropdown
    public static ArrayList<String> getMovieTitle()
    {
        ArrayList<String> movieTitle = new ArrayList<>();

        String url = "jdbc:mysql://localhost:3306/CSD430";
        String userName = "student1";
        String password = "pass";

        String sql = "SELECT title FROM DanielMovies ORDER BY movieID";

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(url, userName, password);

            PreparedStatement statement = conn.prepareStatement(sql);

            ResultSet results = statement.executeQuery();

            while(results.next())
            {
                movieTitle.add(results.getString("title"));
            }

            results.close();
            statement.close();
            conn.close();
        }
        catch (Exception e)
        {
            System.out.println("Error: Unable to return the titles " + e.getMessage());
        }

        

        return movieTitle;
    }

    // Get the movie Details
    public static Movie getMovieByTitles(String movieTitle)
    {
        Movie movie = null;

        String url = "jdbc:mysql://localhost:3306/CSD430";
        String userName = "student1";
        String password = "pass";

        String sql = "SELECT movieId, title, genre, yearReleased, "
            + "director, studio FROM DanielMovies "
            + "WHERE title = ?";

        try
        {
             Class.forName("com.mysql.cj.jdbc.Driver");

             Connection conn = DriverManager.getConnection(url, userName, password);

             PreparedStatement statement = conn.prepareStatement(sql);

             statement.setString(1, movieTitle);

             try (ResultSet result = statement.executeQuery())
            {
                if (result.next())
                {
                    movie = new Movie(
                        result.getInt("movieId"),
                        result.getString("title"),
                        result.getString("genre"),
                        result.getInt("yearReleased"),
                        result.getString("director"),
                        result.getString("studio")
                    );
                }
            }
            statement.close();
            conn.close();
        }
        catch(Exception e)
        {
            System.out.println("Error getting table data: " + e.getMessage());
        }

        return movie;
    }

    public static void addMovie(Movie movie)
    {
        String sql = "INSERT INTO DanielMovies(title, genre, yearReleased, director, studio) Values(?, ?, ?, ?, ?)";

        try
        {
            String url = "jdbc:mysql://localhost:3306/CSD430";
            String userName = "student1";
            String password = "pass";

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(url, userName, password);

            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, movie.getTitle());
            statement.setString(2, movie.getGenre());
            statement.setInt(3, movie.getYearReleased());
            statement.setString(4, movie.getDirector());
            statement.setString(5, movie.getStudio());

            statement.executeUpdate();

            statement.close();
            conn.close();
        }
        catch (Exception e)
        {
            System.err.println("There was an issue inserting the movie into the database. " + e.getMessage());
        }
    }

    public static ArrayList<Movie> getAllMovies()
    {
        ArrayList<Movie> movies = new ArrayList<Movie>();

        String sql = "Select * FROM DanielMovies ORDER BY movieId";

        try
        {
            String url = "jdbc:mysql://localhost:3306/CSD430";
            String userName = "student1";
            String password = "pass";

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection conn = DriverManager.getConnection(url, userName, password);
            PreparedStatement statement = conn.prepareStatement(sql);

            ResultSet results = statement.executeQuery();

            while(results.next())
            {
                Movie movie = new Movie(
                    results.getInt("movieId"),
                    results.getString("title"),
                    results.getString("genre"),
                    results.getInt("yearReleased"),
                    results.getString("director"),
                    results.getString("studio")
                );

                movies.add(movie);
            }

            results.close();
            statement.close();
            conn.close();

        }
        catch(Exception e)
        {
            System.err.println("Error getting all movies from the Database. " + e.getMessage());
        }

        return movies;
    }
}