

/*DanceMusic Tables*/
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
    "GenreId" INT,
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
    REFERENCES dbo.Artists (Artists);

    
ADD CONSTRAINT FK_Albums_Genres FOREIGN KEY (GenreId)     
	REFERENCES dbo.Genres (GenreId);
