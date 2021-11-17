# DanceMusicProject
This is a  project named DanceMusic.  I teach dance exercise classes and  I would like to have better organization for my music collection, student dance preferences,  and contact information.  Although those are my ultimate goals,  I had to limit my class project due to time constraints and specific class requirements.  I plan on expanding it later after the course ends.
I used Window and SQL Express.   To run my project  it is under DanceMusic.sql.   It may be necessary to add the following code to the start.  
drop database music;
CREATE DATABASE IF NOT EXISTS dancingMusic;
use Dancingmusic; 


I satsified the requirements by doing the following:

   The following are included in  the git hub section  called DDL tables to clarify I completed the table requirements.  I  created a relational database schema with a minimum of 3 tables and created DDL (Data Definition Language) for tables and views. At least 2 of the tables  contain 4 or more columns. Two of the tables  have a many-to-many relationship.  Two of the tables  have a one-to-many relationship.The following data types are present somewhere in the table definitions: DATETIME, INT, VARCHAR
Each table is related to one or more of the other tables via a primary key/foreign key relationship.

The following are included in the git hub section called Insertion to clarify I completed the requirementsL
 I created DML (Data Manipulation Language) to load the tables with sample data.
I populated these tables with data by manually inserting data, or using some sort of import tool.  I have included input script. 

The following are included inthe git hub section called Stored Produres to clafiy I completed the requriements. 
I Created and called at least 4 stored procedures to expose CRUD (Create, Read, Update, and Delete) functionality.

I included a separate section of my git hub to clarify I completed features from all 3 group
Chose at least 1 item from each group on the Features List below and implemented them in my stored procedures or DDL script:


Group 1 Used: Reading Data from a Database
Write a  SELECT query that utilizes a JOIN.



Group 2: Updating / Deleting Data from a Database  I used the following one to satisfy requiremnts:

  I used the write a DML statement that UPDATEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable.

UPDATE album
SET country = 'USA'
WHERE country= 'Great Britain';




Group 3: Optimizing a Database

I included the following third feature:   Design a NONCLUSTERED INDEX with ONE KEY COLUMN that improves the performance of one of the above queries.  It is listed under indexed.



Correct use of Git/Github and commits: I followed the correct steps in the project guidelines to create and name the github repository that would reflect a distinct repository. I then used the proper guidelines to initialize the project and add files using git bash and the command line. I then far exceeded the minimum number of commits needed to pass.





