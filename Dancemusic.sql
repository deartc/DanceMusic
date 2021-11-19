

 


 USE DancingMusic


 

 
 
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
	,	AlbumName		varchar(100)
	,	Label	varchar(100)
	,   NumberofSongs int
	,   MainArtist    int


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
	,	
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

---------INdexing--------
---CREATE NONCLUSTERED INDEX IX_AlbumName on Album(AlbumName)
----CREATE NONCLUSTERED INDEX IX_ArtistName on Artist(ArtistName)----------INdexing-------

CONSTRAINT "fk_PlaylistTrack _Song1" FOREIGN KEY("Song_id") REFERENCES "Song"("id"), 
CONSTRAINT "fk_PlaylistTrack _Playlist1" FOREIGN KEY("Playlist_id") REFERENCES "Playlist"("id") );




                                
                
      
 
 
 
             
 
                                
        
                
               
 
/*Insert.*/
 

INSERT INTO ALBUM
(AlbumName, 
Label, 
NumberofSongs,
MainArtist)         


VALUES 
('Life', 'RCA', '10', 'Jean'), 
('Joy',  'ABC', '8', 'Bob'),
('Life', 'CBS', '9', 'Jill'), 
('Soul',  'TNT',
'8', 'Dean);



 
 
 
INSERT INTO Artist
(Name, 
Country,
AccountID)

VALUES 
  ('Life','Britain','1'), 
  ('Soul','Sweeden', '2'),
  ('Peace','Denmark','3');
   
                             

 INSERT INTO Song
 (SongID,
 Name, 
 Duration)

 VALUES 
 ('1','Chi','1'),
 ('2','Pho''2'),
('3','Cho','3'); 
 
  
INSERT INTO Playlist 
(SongID, 
ArtistId) 

VALUES 
 ('1','1'), 
  ('2','2'),
 ('3', '3');
 
 
 INSERT INTO PlaylistTrack 
(PlaylistID,
TrackNo,
SongID)

VALUES  
('1','1','3'), 
  ('2','2','2'),
 ('3', '3','3'),
 ('4','4','4');


 --------  Stored Procedures (CRUD)
----- CRUD (CREATE  PROCEDURE) CreateArtist @Name, @Country  

CREATE PROCEDURE CreateArtist @Name, @Country 


create procedure add ArtistId int,  Name varchar(100), Country varchar(100), AccountID int
 
 
 
BEGIN
INSERT INTO ArtistId (Name, Country, AccountID)

  'Summer', 'Britain', '5'; 
 
END

EXECUTE CreateArtist @Name = ‘Dogs’, @Country = ‘England’


GO----------Not working yet-----------------


--Create  procedure


CREATE PROCEDURE spAlbumFromArtist 
           @ArtistName varchar(255)
AS
           SELECT AlbumName, ReleaseDate
           FROM Album



Stored Procedures (CRUD)
                ----- CRUD (CREATE  PROCEDURE) CreateArtist @Name, @Country 
                create procedure add or alter ArtistID int,  Name varchar(100), Country varchar(100), AccountID int
                
                
                 
                BEGIN
                INSERT INTO ArtistId (Name, Country, AccountID)
                VALUES 
                  'Summer', 'Britain', '5'; 
                 
                END

			
                
                EXECUTE CreateArtist @Name = 'Summer’, @Country = ‘Britain’
                
                 
                




Stored Procedures (CRUD)
                ----- CRUD (CREATE  PROCEDURE) CreateArtist @Name, @Country 
                create procedure add ArtistID int,  Name varchar(100), Country varchar(100), AccountID int
                
                
                 
                BEGIN
                INSERT INTO ArtistId (Name, Country, AccountID)
                VALUES 
                  'Summer', 'Britain', '5'); 
                 
                END
                
                EXECUTE CreateArtist @Name = 'Summer’, @Country = ‘England’
                
                 
                GO


Create procedure

					 
INNER JOIN Artist
                      ON Album.ArtistId = Artist.ArtistId 
           WHERE Artist.ArtistName = @ArtistName;
GO

EXECUTE spAlbumFromArtist @ArtistName = "Smiths"





















-------CRUD    (READ Procedure) Artist



Create procedure spAlbumsFromArtist 
	@ArtistName varchar(255)
AS
	SELECT AlbumName, ReleaseDate
	FROM Album
		INNER JOIN Artist
		ON Album.ArtistId = Artist.ArtistId 
	WHERE Artist.ArtistName = @ArtistName;





EXECUTE UpdateAlbum @AlbumID = 1, @AlbumNewName = Joy

GO
 




 
--- crud-Update Album Year
 
Create procedure
 

UPDATE Album SET year = year + 1;





EXECUTE UpdateAlbum @AlbumID = +1

GO----NOt working_____















 















