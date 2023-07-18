/* Segment 1: Database - Tables, Columns, Relationships
•	Identify the tables in the dataset and their respective columns.
•	Determine the number of rows in each table within the schema.
•	Identify and handle any missing values in the dataset.
*/

-- Drops the Database netflix to make sure it doesn't exist already
DROP DATABASE netflix;

-- Creates the database netflix to store the netflix data
CREATE DATABASE netflix;

-- Drops the table netflix_data to make sure it doesn't exist already 
DROP TABLE netflix_data;

-- Creates the table netflix_data with 11 columns in it
CREATE TABLE netflix_data (
   id int,
   show_id varchar(255),
   type varchar(255),
   title varchar(255),
   director varchar(255),
   country varchar(255),
   date_added varchar(255),
   release_year varchar(255),
   rating varchar(255),
   duration varchar(255),
   listed_in varchar(255)
);

-- inserts data in the netflix_data table that was created
insert into netflix_data values

-- displays the number of rows present in the netflix_data table
select count(*) from netflix_data; -- 8790 rows, Duplicates:0 Warnings:0

-- describes the table fields, data types, Null values and keys if any
DESCRIBE netflix_data;

