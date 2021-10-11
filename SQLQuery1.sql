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
;   
