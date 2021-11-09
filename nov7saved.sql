
IF OBJECT_ID('Albums', 'U') IS NOT NULL
    DROP TABLE Albums
 
IF OBJECT_ID('AlbumTrack', 'U') IS NOT NULL
    DROP TABLE AlbumTrack
    
    
 IF OBJECT_ID('Artist', 'U') IS NOT NULL    DROP TABLE Artist;

 
 
 
IF OBJECT_ID('Band', 'U') IS NOT NULL  
   DROP TABLE Band;
IF OBJECT_ID('Song', 'U') IS NOT NULL  
   DROP TABLE Song;
 
 
    
 
CREATE TABLE Albums (
  AlbumId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  AlbumName nvarchar(255) NOT NULL,
  TimeDate date NOT NULL,
  ArtistId int NOT NULL,
  GenreId int NOT NULL
  CONSTRAINT FK_Albums_Artists FOREIGN KEY (ArtistId)     
    REFERENCES dbo.Artists (ArtistId)             
                                
                -- ARTIST
                CREATE TABLE [music].[Artist]
                (              ArtistID int IDENTITY(1,1) PRIMARY KEY
                ,               Name                    varchar(100)
                ,               Country                varchar(100)
                ,               AccountID           int NULL
                ,               FOREIGN KEY (AccountID) REFERENCES [music].[Account](AccountID)
                                );
                
                
 
                                
                --SONG
                CREATE TABLE [music].Song
                (              SongID                  int IDENTITY(1,1) PRIMARY KEY
                ,               Name                    varchar(100)
                ,               Duration              int
                                );
                                
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
              
               

/*Created DDL (Data Definition Language) for tables and views.  Created DML (Data Manipulation Language) to load the tables with sample data.
Created and called at least 4 stored procedures.
Created stored procedures to expose CRUD (Create, Read, Update, and Delete) functionality.*/

create procedure Add AlbumId int, AlbumName nvarchar(255), TimeDate date, Artist, GenreId int 
 
 BEGIN
 INSERT INTO AlbumId  (AlbumName, TimeDate, Artist, GenreId) VALUES 
  Life, 1984, Jeans, 1 
  Soul, 1985, Bills, 2
 Peace, 1986, Sills, 3 

 END




create procedure add ArtistID int,  Name varchar(100), Country varchar(100), AccountID int



BEGIN
 INSERT INTO ArtistId (Name, Country, AccountID) VALUES 
  Life, Britain, 1 
  Soul, Sweeden, 2
  Peace, Denmark, 3 
END


create procedure ADD AlbumTrack int, AlbumID nvarchar(255), TrackNo int, Artist nvarchar(255, SongId int
BEGIN
 
 INSERT INTO AlbumTrack  (AlbumID, TrackNo, Artist, SongId) VALUES 
  Lif, 1984, Jeans, 1 
  Sou, 1985, Bills, 2
 Peac, 1986, Sills, 3 

 END

                        


create procedure ADD SongID int,  Name varchar(100), Country varchar(100), AccountID int
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         
                                                                                         













