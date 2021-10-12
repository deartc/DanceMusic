CREATE TABLE "Playlist"
(
    "PlaylistId" INT NOT NULL,
    "Name" VARCHAR(120),
    CONSTRAINT "PK_Playlist" PRIMARY KEY  ("PlaylistId")
);

CREATE TABLE "PlaylistTrack"
(
    "PlaylistId" INT NOT NULL,
    "TrackId" INT NOT NULL,
    CONSTRAINT "PK_PlaylistTrack" PRIMARY KEY  ("PlaylistId", "TrackId")
);

CREATE TABLE "Track"
(
    "TrackId" INT NOT NULL,
    "Name" VARCHAR(200) NOT NULL,
    "AlbumId" INT,
    "MediaTypeId" INT NOT NULL,
    "GenreId" INT,
    "Composer" VARCHAR(220),
    "Milliseconds" INT NOT NULL,
    "Bytes" INT,
    "UnitPrice" NUMERIC(10,2) NOT NULL,
    CONSTRAINT "PK_Track" PRIMARY KEY  ("TrackId")
);

CREATE TABLE Artists (
  ArtistId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  ArtistName nvarchar(255) NOT NULL,
  ActiveFrom date
);
CREATE TABLE Genres (
  GenreId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  Genre nvarchar(50) NOT NULL
);
CREATE TABLE Albums (
  AlbumId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  AlbumName nvarchar(255) NOT NULL,
  TimeDate date NOT NULL,
  ArtistId int NOT NULL,
  GenreId int NOT NULL
  CONSTRAINT FK_Albums_Artists FOREIGN KEY (ArtistId)     
    REFERENCES dbo.Artists (ArtistId)     
 
INSERT INTO Artists (ArtistName, ActiveFrom, Country)
VALUES 
  ('Abba','1979-1-25', 'Sweeden'),
  ('Jeans','1975-02-11', 'USA'), 
  ('Dudes','1990-01-01', 'Italy'),
  ('Chubby','1919-07-01', 'France'),
  ('Chebu','1995-04-01','Russia'),
  ('Jones','1967-01-02', 'Denmark'),
  ('Time','1965-01-01', 'Germany'),
  ('Life','1997-01-27', 'USA'),
  ('Pips','2009-04-01','Great Britan'),
  ('List','1989-07-26', 'Spain')
 

INSERT INTO Genres (Genre)
VALUES 
  ('Alt'),
  ('Rap'), 
  ('Punk'),
  ('Pop'),
  ('Blues'),
  ('Dance Hall'),
  ('Rap'),
  ('Country');

INSERT INTO Albums (AlbumName, TimeDate, ArtistId, GenreId)
VALUES 
  ('Joy', '1987-09-03', 1, 1),
  ('Peace', '1981-05-20', 2, 1), 
  ('Sing', '1979-01-01', 6, 3),
  ('Zeal', '2010-05-27', 5, 1),
  ('Cool', '2017-05-16', 5, 1),
  ('Earth', '2010-09-18', 5, 1),
  ('Wind', '1989-09-29', 1, 1),	
  ('Perform', '1989-05-16', 1, 1),	
  ('Kilter', '1987-02-07', 1, 1),		
  ('Bass', '1969-06-01', 4, 2),			
  ('All Night', '2010-04-05', 3, 2)





CREATE TABLE Artists (
  ArtistId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  ArtistName nvarchar(255) NOT NULL,
  ActiveFrom date
);
CREATE TABLE Genres (
  GenreId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  Genre nvarchar(50) NOT NULL
);
CREATE TABLE Albums (
  AlbumId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
  AlbumName nvarchar(255) NOT NULL,
  TimeDate date NOT NULL,
  ArtistId int NOT NULL,
  GenreId int NOT NULL
  CONSTRAINT FK_Albums_Artists FOREIGN KEY (ArtistId)     
    REFERENCES dbo.Artists (ArtistId)     
 
INSERT INTO Artists (ArtistName, ActiveFrom, Country)
VALUES 
  ('Abba','1979-1-25', 'Sweeden'),
  ('Jeans','1975-02-11', 'USA'), 
  ('Dudes','1990-01-01', 'Italy'),
  ('Chubby','1919-07-01', 'France'),
  ('Chebu','1995-04-01','Russia'),
  ('Jones','1967-01-02', 'Denmark'),
  ('Time','1965-01-01', 'Germany'),
  ('Life','1997-01-27', 'USA'),
  ('Pips','2009-04-01','Great Britan'),
  ('List','1989-07-26', 'Spain')
 

INSERT INTO Genres (Genre)
VALUES 
  ('Alt'),
  ('Rap'), 
  ('Punk'),
  ('Pop'),
  ('Blues'),
  ('Dance Hall'),
  ('Rap'),
  ('Country');

INSERT INTO Albums (AlbumName, TimeDate, ArtistId, GenreId)
VALUES 
  ('Joy', '1987-09-03', 1, 1),
  ('Peace', '1981-05-20', 2, 1), 
  ('Sing', '1979-01-01', 6, 3),
  ('Zeal', '2010-05-27', 5, 1),
  ('Cool', '2017-05-16', 5, 1),
  ('Earth', '2010-09-18', 5, 1),
  ('Wind', '1989-09-29', 1, 1),	
  ('Perform', '1989-05-16', 1, 1),	
  ('Kilter', '1987-02-07', 1, 1),		
  ('Bass', '1969-06-01', 4, 2),			
  ('All Night', '2010-04-05', 3, 2)