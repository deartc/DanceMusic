

DROP DATABASE IF EXISTS Music
CREATE DATABASE Music;
 
USE Music
 
GO
 
 
 --DROP Tables
DROP TABLE IF EXISTS Artist
DROP TABLE IF EXISTS Song
DROP TABLE IF EXISTS Album
DROP DATABASE IF EXISTS AlbumTrack
DROP TABLE IF EXISTS Playlist
DROP TABLE IF EXISTS PlaylistTrack

 



 
	
--CREATE TABLES	
		
	-- ARTIST
	CREATE TABLE Artist
	(	ArtistID	int IDENTITY(1,1) PRIMARY KEY
	,	Name		varchar(100)
	,	Country		varchar(100)
	,	AccountID	int NULL
		);
	
	

		
	--SONG
	CREATE TABLE Song
	(	SongID		int IDENTITY(1,1) PRIMARY KEY
	,	Name		varchar(100)
	,	Duration	int
		);
		
	
		

	
		
	--ALBUM
	CREATE TABLE Album
	(	AlbumID		int IDENTITY(1,1) PRIMARY KEY

	,	AlbumName	varchar(100)	
	,	ReleaseDate DateTime  (100)
	 ,  Artist        varchar(100)
	,	Label          varchar(100)
	
	,	SongID		int
	,	PRIMARY KEY (AlbumID, TrackNo)
	,	FOREIGN KEY (AlbumID) REFERENCES Album (AlbumID)
	,	FOREIGN KEY (SongID) REFERENCES Song (SongID)
		);
	
	--Playlist
	CREATE TABLE Playlist
	(	PlaylistID	int IDENTITY(1,1) PRIMARY KEY
	,	Title		varchar(100)
	,	UserID		int NOT NULL
	,	FOREIGN KEY (UserID) REFERENCES Users(UserID)
		);
		
           --PLAYLISTTRACK
                CREATE TABLE PlaylistTrack
                (              PlaylistID              int
                ,               TrackNo                               int
                ,               SongID                  int
                ,               PRIMARY KEY (PlaylistID, TrackNo)
                ,               FOREIGN KEY (PlaylistID) REFERENCES Playlist(PlaylistID)
                ,               FOREIGN KEY (SongID) REFERENCES Song (SongID)
                                );

                                
                
      
 
 
 
             
 
                                
        
                
               
 
/*Created DDL (Data Definition Language) for tables and views.  Created DML (Data Manipulation Language) to load the tables with sample data.
Created and called at least 4 stored procedures.
Created stored procedures to expose CRUD (Create, Read, Update, and Delete) functionality.*/
 

INSERT INTO ALBUM
(AlbumName, 
ReleaseDate, 
Artist,
Label)

VALUES 
('Life', '2011','Jeans', 'RCA') 
('Joy', '2005','Bills', 'ABC')
('Life', '1994','Jeans', 'CBS') 
('Soul', '1997','Bills', 'TNT');



 
 
 
INSERT INTO Artist
(Name, 
Country,
AccountID)

VALUES 
 ('Life','Britain', '1') 
  ('Soul','Sweeden', '2')
  ('Peace','Denmark','3');
   
                             

 INSERT INTO Song
 (AlbumID, 
 TrackNo, 
 Artist,
 SongId)

 VALUES 
 ('1','2','Chi', '1')
 ('2','3','Pho','2')
('3','4', 'Cho','4'); 
 
  
INSERT INTO Playlist 
(SongID, 
ArtistId) 

VALUES 
 ('1','1') 
  ('2','2')
 ('3', '3');
 
 
 INSERT INTO PlaylistTrack 
(PlaylistID,
TrackNo,
SongID, 
ArtistId)

VALUES  ('1','1,' '1,''1') 
  ('2','2','2','2')
 ('3', '3', '3','3')
 ('4','4','4','4');


 

 
--------  Stored Procedures (CRUD)

-----CREATE
create procedure add ArtistID int,  Name varchar(100), Country varchar(100), AccountID int
 
 
 
BEGIN
INSERT INTO ArtistId (Name, Country, AccountID)
VALUES 
  'Sum', 'Britain', '5'); 
 
END





----CRUD-REPlace Left Join

 join genre using(genreid)
        group by albumid
          having count(distinct genre.name) > 1
        )
        as multi_genre_album(albumid, genres) using (albumid)

        join genre using(genreid)
        join album using(albumid)
        join artist using(artistid)

 
 
--- crud-Update Album Year
 

 
-UPDATE ALBUM by subracting a year
UPDATE Album SET year = year - 1; 
 
--- Stored Proceures DELETE
DELETE FROM Song WHERE songId = 
'3';




-----INDEXED
CREATE UNIQUE INDEX IX_Artist_Name ON Artist (ArtistName)
CREATE UNIQUE INDEX IX_Album_Artist_Name ON Album (ArtistID, AlbumName)
CREATE UNIQUE INDEX IX_Song_Album_Name ON Song (AlbumID, SongName)
    






 






  



	