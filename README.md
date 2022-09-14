# DanceMusicProject
 DanceMusic is a SQL project to have better organization for my music collection, student dance preferences,  and contact information. 
I used Window and SQL Express.   To run my project  it is under DanceMusic.sql.   It may be necessary to add the following code to the start.  
drop database  DancingMusic;
CREATE DATABASE IF NOT EXISTS DancingMusic;
use Dancingmusic; 

 Created a relational database schema with a minimum of 3 tables. At least 2 of the tables  contain 4 or more columns. Two of the tables  have a many-to-many relationship.  Two of the tables  have a one-to-many relationship.The following data types are present somewhere in the table definitions: DATETIME, INT, VARCHAR
Each table is related to one or more of the other tables via a primary key/foreign key relationship.

TABLE  Artist
TABLE  Song
TABLE Album
TABLE AlbumTrack
TABLE  Playlist
 TABLE  PlaylistTrack


 Created DML (Data Manipulation Language) to load the tables with sample data.
Populated these tables with data by manually inserting data.






I created and called at least 4 stored procedures to expose CRUD (Create, Read, Update, and Delete) functionality.
 Procedures:
 CreateArtist;
 readPlaylist;
 updateAlbum;
 deleteAlbum
 deleteArtist;
 
 


I included a separate folders of my git hub to clarify I completed features from all 3 group
I chose at least 1 item from each group on the Features List below and implemented them,





Group 1 Used: Reading Data from a Database, 
 I put the ones used in Group Folder 1











Group 2: Updating / Deleting Data from a Database  I put these in Group Folder 2

  





Group 3: Optimizing a Database

I included the following third feature:  
 Design a NONCLUSTERED INDEX with ONE KEY COLUMN that improves the performance of one of the above queries.  It is listed under indexed lines on 105 and 106. and Group Folder 3  
This is optimizing.








