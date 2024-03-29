

 


 USE DancingMusic

 
 ----DROP Tables
DROP TABLE IF EXISTS Artist
DROP TABLE IF EXISTS Song
DROP TABLE IF EXISTS Album
DROP TABLE IF EXISTS AlbumTrack
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
	,   ReleaseDate datetime


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
		,               Genre                   int
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
(AlbumID
AlbumName, 
Label, 
NumberofSongs,
MainArtist,
ReleaseDate)


VALUES 
('1', 'Abba', 'RCA', '10', 'Jean', '1996-12-01'), 
('2', 'Joy',  'ABC', '8', 'Bob', '1995-11-02'),
('3','Life', 'CBS', '9', 'Jill', '1994-10-01'), 
('4','Soul',  'TNT',
'8', 'Dean', '1993-08-05');


INSERT INTO AlbumTrack
	(AlbumID,	 
	TrackNo,		
	SongID)
	
	('1', '1', '1'),
	('2', '2', '2'),
	('3', '3', '3'),
	('4', '4', '4'),
	
	
 
 
 
INSERT INTO Artist
(Name, 
Country,
AccountID)

VALUES 
  ('Abba','Britain','1'), 
  ('Soul','Sweeden', '2'),
   ('Tyka','Britain','3'), 
  ('Sweet','Sweeden', '4'),

  
                             

 INSERT INTO Song
 (SongID,
 Name, 
 Duration)

 VALUES 
 ('1','Joy','4'),
 ('2','Peace','5'),
 ('3','Decency','4'),
 ('4','Tiny','5'),

 
  
INSERT INTO Playlist 
PlaylistID,
Title,
UserID,); 

VALUES 
 ('1' 'discos','1'), 
  ('2','sambas','2'),
 ('3','tangos', '3'),
 ('4''waltzes','4');
 
 
 INSERT INTO PlaylistTrack 
(PlaylistID,
TrackNo,
SongID,
Genre)

VALUES  
('1','1','1', 'disco'), 
  ('2','2','2', 'samba'),
 ('3', '3','3', 'tango'),
 ('4','4','4,' 'waltz');


 --------  Stored Procedures (CRUD)
----- CRUD (CREATE  PROCEDURE) CreateArtist @Name, @Country  

CREATE PROCEDURE CreateArtist @Name, @Country(AS ArtistId int,  Name varchar(100), Country varchar(100))
 
 
 
BEGIN
     INSERT INTO Artist
SET Artist = ArtistId, Name = @Name, Country = @Country;


 
END

EXECUTE CreateArtist @Name = ‘Sumner’, @Country = ‘Britain’


GO


----------CRUD procedure  READ


CREATE PROCEDURE spAlbumFromArtist 

BEGIN
           @ArtistName varchar(100)
           SELECT AlbumName
           FROM Album
END	   
	   
	   
	   
EXECUTE spAlbumFromArtist @ArtistName = "Abba";

GO






---------CRUD
CREATE PROCEDURE ReadPlaylist @PlaylistID (AT PlaylistID (INT)) 
BEGIN Playlist = 1 

SELECT @PlaylistID =1  

END  
EXECUTE ReadPlaylist @PlaylistID 

GO




--------CRUD Procedure  Update

CREATE PROCEDURE UpdateArtist @ArtistID, @ArtistNewName(As ArtistID int))



BEGIN
	UPDATE Artist
    SET  ArtistID = ArtistOldName
    WHERE ArtistID = ArtistNewName;

	END

EXECUTE UpdateArtist @AlbumID = 1, @AlbumNewName = The Beatles
UpdateArtist @AlbumID = 1, @AlbumNewName = The Beatles


GO





-------CRUD PROCDURE DELETE


CREATE PROCEDURE DeleteArtist @ArtistID AS
BEGIN

   
deleteArtist(ArtistID INT)
BEGIN
	DELETE FROM Artist WHERE ArtistID = @ArtistID;	
	
	
	END



EXECUTE DeleteArtist @ArtistID = 1

go

------------------------------------------------------------------------------------------------------------------------------------
/* Select Procedure  Queries written not executed

SELECT AlbumId, AlbumName, ArtistId ---
FROM Albums 
WHERE ArtistId = 1;



EXECUTE spAlbumFromArtist @ArtistName = "Abba"; 
/*Query  - used for Group 1 : 
Write a SELECT query that uses an OR and an AND operator. . */

Begin
SELECT artist_id
FROM artist
WHERE artist_name =  'Abba'

SELECT album_id
FROM album
WHERE album_name =  'Joy'

SELECT COUNT(*)
FROM track
WHERE artist_id=1 AND album_id =1       written but not executed*/


------------------------------------------------------------------------------------------------------------------------------------------------------



	   
	   
	 





























































