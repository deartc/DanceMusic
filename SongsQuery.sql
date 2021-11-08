
--Which artist or artists have recorded the most number of songs?

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
