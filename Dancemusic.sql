

 


 USE DancingMusic

 
 ----DROP Tables
DROP TABLE IF EXISTS Artist
DROP TABLE IF EXISTS Song
DROP TABLE IF EXISTS Album
DROP DATABASE IF EXISTS AlbumTrack
DROP TABLE IF EXISTS Playlist
DROP TABLE IF EXISTS PlaylistTrack

---- DROP Procedures
DROP PROCEDURE IF EXISTS CreateArtist;
DROP PROCEDURE IF EXISTS readPlaylist;
DROP PROCEDURE IF EXISTS updateAlbum;
DROP PROCEDURE IF EXISTS deleteAlbum;
DROP PROCEDURE IF EXISTS deleteArtist;
Drop Procedure  IF EXISTS spAlbumsFromArtist



	
----CREATE TABLES	
		
	---- ARTIST
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

---------Indexing--------
---CREATE NONCLUSTERED INDEX IX_AlbumName on Album(AlbumName)
----CREATE NONCLUSTERED INDEX IX_ArtistName on Artist(ArtistName)----------INdexing-------

-----CONSTRAINT "fk_PlaylistTrack _Song1" FOREIGN KEY("Song_id") REFERENCES "Song"("id"), 
------CONSTRAINT "fk_PlaylistTrack _Playlist1" FOREIGN KEY("Playlist_id") REFERENCES "Playlist"("id") );


CREATE INDEX SongID_index
ON PLAYLISTTRACK (SongID);




                                
                
 
/*Insert Values into Tables*/
 

INSERT INTO ALBUM
(AlbumName, 
Label, 
NumberofSongs,
MainArtist)         


VALUES 
('Abba', 'RCA', '10', 'Jean'), 
('Joy',  'ABC', '8', 'Bob'),
('Life', 'CBS', '9', 'Jill'), 
('Soul',  'TNT',
'8', 'Dean);



 
 
 
INSERT INTO Artist
(Name, 
Country,
AccountID)

VALUES 
  ('Abba','Britain','1'), 
  ('Soul','Sweeden', '2'),
  ('Peace','Denmark','3');
   
                             

 INSERT INTO Song
 (SongID,
 Name, 
 Duration)

 VALUES 
 ('1','Joy','4'),
 ('2','Pho''5'),
('3','Cho','6'); 
 
  
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


create procedure add ArtistId int,  Name varchar(100), Country varchar(100)
 
 
 
BEGIN
INSERT INTO ArtistId (Name, Country, ArtistID)

  'Summer', 'Britain', '5'; 
 
END

EXECUTE CreateArtist @Name = ‘Sumner’, @Country = ‘Britain’


GO


----------CRUD procedure


CREATE PROCEDURE spAlbumFromArtist 
           @ArtistName varchar(100)
AS
           SELECT AlbumName, ReleaseDate
           FROM Album
EXECUTE spAlbumFromArtist @ArtistName = "Smiths";






-----------Stored Procedures (CRUD)
                ----- CRUD (CREATE  PROCEDURE) CreateArtist @Name, @Country 
                create procedure add or alter ArtistID int,  Name varchar(100), Country varchar(100), AccountID int
                
                
                 
                BEGIN
                INSERT INTO ArtistId (Name, Country, AccountID)
                VALUES 
                  'Summer', 'Britain', '5'; 
                 
                END

			
                
                EXECUTE CreateArtist @Name = 'Summer’, @Country = ‘Britain’
				Go
                
                 
                






-------CRUD    (READ Procedure) Artist


Create procedure spAlbumsFromArtist 
	@ArtistName varchar(100)
AS
	SELECT AlbumName, ReleaseDate
	FROM Album
		INNER JOIN Artist
		ON Album.ArtistId = Artist.ArtistId 
	WHERE Artist.ArtistName = @ArtistName;



	---------CRUD
	CREATE PROCEDURE READ Artist @Name, @Country 


create procedure READ ArtistId int,  Name varchar(100), Country varchar(100)
 
 
 
BEGIN
INSERT INTO ArtistId (Name, Country, ArtistID)

  'Summer', 'Britain', '5'; 
 
END

EXECUTE READ Artist @Name = ‘Sumner’, @Country = ‘Britain’ ArtistID = '5'

GO


---------CRUD
CREATE PROCEDURE ReadPlaylist @PlaylistID AS
ReadPlaylist= 1  @PlaylistID=1  

END  
EXECUTE ReadPlaylist @PlaylistID 

GO




--------CRUD Procedure  Update

CREATE PROCEDURE UpdateArtist @ArtistID, @ArtistNewName AS



BEGIN
	UPDATE Artist
    SET  ArtistID = ArtistOldName
    WHERE ArtistID = ArtistNewName;

	END

EXECUTE UpdateArtist @AlbumID = 1, @AlbumNewName = The Beatles
dateArtist @AlbumID = 1, @AlbumNewName = The Beatles


GO





-------CRUD PROCDURE DELETE


CREATE PROCEDURE DeleteArtist @ArtistID AS
BEGIN

   
deleteArtist(IN docid INT)
BEGIN
	DELETE FROM Artist WHERE ArtistID = @ArtistID;	
	
	
	END



EXECUTE DeleteArtist @ArtistID = 1

GO
	


----Select Procedure  Query

SELECT AlbumId, AlbumName, ArtistId 
FROM Albums 
WHERE ArtistId = 1;



EXECUTE spAlbumFromArtist @ArtistName = "Abba"; 
/*Query  - used for Group 1 : 
Write a SELECT query that uses an OR and an AND operator. . */

SELECT artist_id
FROM artist
WHERE artist_name =  'Abba'

SELECT album_id
FROM album
WHERE album_name =  'Joy'

SELECT COUNT(*)
FROM track
WHERE artist_id=1 AND album_id =1 



/* Query - used for Group 1. Write a SELECT query that utilizes a variable in the WHERE clause. Write a SELECT query that utilizes an ORDER BY clause. */

SELECT COUNT( * ) 
FROM track
INNER JOIN artist ON artist.artist_id = track.artist_id
INNER JOIN album ON album.album_id = track.album_id
WHERE artist.artist_name =  'Abba'
AND album.album_name =  'Joy'
 
 
/*Group 2: Updating / Deleting Data from a Database I usde the following one to satisfy requiremnts:

I used the write a DML statement that UPDATEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable. */

UPDATE album SET country = 'USA' WHERE country= 'Great Britain';




	   
	   
	 





























































