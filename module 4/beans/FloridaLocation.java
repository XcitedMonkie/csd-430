package beans;

import java.io.Serializable;

/*
    Daniel Fryer
    Assignment 4.2 Bean
    9/4/2026
*/

public class FloridaLocation implements Serializable
{
    // Fields for locations in Florida
    private String locationName;
    private String locationCity;
    private String category;
    private String activity;
    private int rating;

    public FloridaLocation()
    {

    }

    // Constructor to create a location
    public FloridaLocation(
        String locationName, 
        String locationCity, 
        String category,
        String activity, 
        int rating)
        {
            this.locationName = locationName;
            this.locationCity = locationCity;
            this.category = category;
            this.activity = activity;
            this.rating = rating;
        }

    // Getters for the 5 fields

    public String getLocationName()
    {
        return locationName;
    }
    public String getLocationCity()
    {
        return locationCity;
    }
    public String getCategory()
    {
        return category;
    }
    public String getActivity()
    {
        return activity;
    }
    public int getRating()
    {
        return rating;
    }

    // Setters for the 5 fields

    public void setLocationName(String name)
    {
        this.locationName = name;
    }
    public void setLocationCity(String city)
    {
        this.locationCity = city;
    }
    public void setCategory(String category)
    {
        this.category = category;
    }
    public void setActivity(String activity)
    {
        this.activity = activity;
    }
    public void setRating(int rating)
    {
        this.rating = rating;
    }
}