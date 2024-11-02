-- Crear la base de datos
CREATE DATABASE DWHorrorMovies1;
GO
USE DWHorrorMovies1;
GO

-- Crear la tabla dim_genre
CREATE TABLE dim_genre (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(300)
);

-- Crear la tabla dim_language
CREATE TABLE dim_language (
    language_id INT PRIMARY KEY,
    original_language VARCHAR(50)
);

-- Crear la tabla dim_date
CREATE TABLE dim_date (
    date_release VARCHAR (20) PRIMARY KEY,
    year INT,
    month INT,
    month_name VARCHAR(20),
    day INT,
    day_name VARCHAR(20),
    week_of_year INT,
    quarter INT
);

-- Crear la tabla fact_movies
CREATE TABLE fact_movies (
    id INT PRIMARY KEY,
    title VARCHAR(300),
    popularity INT,  
    vote_count INT,
    vote_average INT,  
    runtime INT,
    genre_id INT,
    language_id INT,
    release_date VARCHAR(20),
    FOREIGN KEY (genre_id) REFERENCES dim_genre(genre_id) ON DELETE CASCADE,
    FOREIGN KEY (language_id) REFERENCES dim_language(language_id) ON DELETE CASCADE,
    FOREIGN KEY (release_date) REFERENCES dim_date(date_release) ON DELETE CASCADE
);




select * from fact_movies 
select * from dim_language
select * from dim_genre
select * from dim_date

/*drop database DWHorrorMovies*/
