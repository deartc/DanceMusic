/* List the number of songs per artist in descending order*/

select
    ar.name "Artist Name",
    count(*) "Number of Songs"
from
    song s join album  al on s.album_id = al.id
    	   join artist ar on al.artist_id = ar.id
group by
    ar.name
order by
    count(*) desc
    
    
    
    
    
    -- title and artist who recorded the song 'Peace'
	SELECT title, artist
	FROM album JOIN track
	ON (album.asin=track.album)
	WHERE song = 'Peace'
	

	-- Artist who recorded the song 'Joy'? 
	SELECT artist
	FROM album JOIN track
	ON (album.asin = track.album)
	WHERE song = 'Joy'--Which artist or artists have recorded the most number of songs?

select
   ar.name "Artist Name",
   count(*) "Number of Songs"
from
    song s join album al on s.album_id = al.id
    	   join artist ar on al.artist_id = ar.id 
group by
   ar.name
order by
   count(*) desc
limit 1	
;   
  
/create procedure  inner join

CREATE PROCEDURE spAlbumsFromArtist 
	@ArtistName varchar(255)
AS
	SELECT AlbumName, ReleaseDate
	FROM Albums
		INNER JOIN Artists
		ON Albums.ArtistId = Artists.ArtistId 
	WHERE Artists.ArtistName = @ArtistName;
GO


