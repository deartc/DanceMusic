

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
		
	
		

	
		
	--ALBUM --ALBUM
	CREATE TABLE Album
	(	AlbumID		int IDENTITY(1,1) PRIMARY KEY
	,	Title		varchar(100)
	,	MainArtist	int NULL
	,	FOREIGN KEY (MainArtist) REFERENCES Artist (ArtistID)
		);
		
	--ALBUMTRACK
	CREATE TABLE AlbumTrack
	(	AlbumID		int 
	,	TrackNo		int
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



-------CRUD 
Create procedure spAlbumsFromArtist 
	@ArtistName varchar(255)
AS
	SELECT AlbumName, ReleaseDate
	FROM Album
		INNER JOIN Artists
		ON Albums.ArtistId = Artists.ArtistId 
	WHERE Artists.ArtistName = @ArtistName;
GO
 





----CRUD-REPlace Left Join

Create procedure

 join genre using(genreid)
        group by albumid
          having count(distinct genre.name) > 1
        )
        as multi_genre_album(albumid, genres) using (albumid)

        join genre using(genreid)
        join album using(albumid)
        join artist using(artistid)
	
	
	Go

 
 
--- crud-Update Album Year
 
Create procedure
 
-UPDATE ALBUM by subracting a year
UPDATE Album SET year = year - 1;


 
--- Stored   Crud Proceures DELETE

Create procedure
DELETE FROM Song WHERE songId = 
'3';

Go



-----INDEXED
CREATE UNIQUE INDEX IX_Artist_Name ON Artist (ArtistName)
CREATE UNIQUE INDEX IX_Album_Artist_Name ON Album (ArtistID, AlbumName)
CREATE UNIQUE INDEX IX_Song_Album_Name ON Song (AlbumID, SongName)

-EXECUTE statements to test out your procedures
EXECUTE CreateArtist @Name = ‘Sumpter’, @Country = ‘England’
EXECUTE UpdateArtist @AlbumID = 1, @AlbumNewName = ‘Joy’
EXECUTE DeleteArtist @SongId = 1
EXECUTE REadPlaylist @PlaylistID = 1





    






 






  



	
