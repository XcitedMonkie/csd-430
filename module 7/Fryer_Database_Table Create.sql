--Daniel Fryer
--Assignment 5.2/6.2 – Create Database/table
--9/11/2026

-- Create the database 
CREATE DATABASE IF NOT EXISTS CSD430;

-- Create the table
CREATE TABLE DanielMovies(
movieId INT NOT NULL AUTO_INCREMENT,
title VARCHAR(200) NOT NULL,
genre VARCHAR(100) NOT NULL,
yearReleased INT,
director VARCHAR(100),
studio VARCHAR(100),
PRIMARY KEY(movieID));

-- Create the user if needed and grant permissions
CREATE USER IF NOT EXISTS 'student1'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
