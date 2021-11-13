DROP DATABASE IF EXISTS Music
CREATE DATABASE Music;
 
USE Music
 
GO
 
 
 
DROP TABLE IF EXISTS music.Artist
DROP TABLE IF EXISTS music.Song
DROP TABLE IF EXISTS music.Band
DROP TABLE IF EXISTS music.Album
 
 

                           
                --BAND
                CREATE TABLE [music].Band
                (              SongID                  int 
                ,               ArtistID int 
                ,               PRIMARY KEY     (SongID, ArtistID)
                ,               FOREIGN KEY (SongID) REFERENCES [music].[Song] (SongID)
                ,               FOREIGN KEY (ArtistID) REFERENCES [music].[Artist] (ArtistID)
                                );
                                
                --ALBUM
                CREATE TABLE [music].Album
                (              AlbumID                              int IDENTITY(1,1) PRIMARY KEY
                ,               Title                       varchar(100)
                ,               MainArtist           int NULL
                ,               FOREIGN KEY (MainArtist) REFERENCES [music].[Artist] (ArtistID)
                                );
              
                                
                
      -- ARTIST
      CREATE TABLE [dbo].[Artist]
      (    ArtistID   int IDENTITY(1,1) PRIMARY KEY
      ,    Name       varchar(100)
      ,    Country         varchar(100)
      ,    AccountID  int NULL
      ,    FOREIGN KEY (AccountID) REFERENCES [dbo].[Account](AccountID)
           );
      
 
 
 
             
 
                                
                --SONG
                CREATE TABLE [music].Song
                (              SongID                  int IDENTITY(1,1) PRIMARY KEY
                ,               Name                    varchar(100)
                ,               Duration              int
                                );
                                
                
               
 
/*Created DDL (Data Definition Language) for tables and views.  Created DML (Data Manipulation Language) to load the tables with sample data.
Created and called at least 4 stored procedures.
Created stored procedures to expose CRUD (Create, Read, Update, and Delete) functionality.*/
 

INSERT INTO ALBUM
(AlbumName, 
TimeDate, 
Artist,
GenreId)

VALUES 
('Life', '1984','Jeans', '1') 
('Soo', '1985','Bills', '2')
('Peace', '1986','Sills', '3'); 
 
 
 
INSERT INTO Artist
(Name, 
Country,
AccountID)

VALUES 
 ('Life','Britain', '1') 
  ('Soul','Sweeden', '2')
  ('Peace','Denmark','3')
   
                             

 INSERT INTO Song
 (AlbumID, 
 TrackNo, 
 Artist,
 SongId)

 VALUES 
 ('Li','2','Chi' '1')
 ('So','3','Pho','2')
('Pea','4' 'Cho','4'); 
 
  
INSERT INTO Band 
(SongID, 
ArtistId) 
VALUES 
 ('1','1') 
  ('2','2')
 ('3', '3');
 


SELECT query 
INSERT INTO AlbumSong (songId, 
albumId) SELECT s.songId, 
a.albumID FROM Song s JOIN Album a
ON s.title = 'Passacaglia' AND 
a.title = 'Classical Music';
 
                            

      
--UPDATE
 
 
 
UPDATE dbo.Song
SET Duration = NULL;
 
UPDATE dbo.Song
SET Duration =  600
WHERE SongID = 1;
 
 
DELETE dbo.Songs
WHERE SongID = 1;
 
 
 
 
 



