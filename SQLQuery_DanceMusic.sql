
/*Query 1 - used for Group 1 : Reading Data from a Database Write a SELECT query that utilizes a JOIN. */

select
   a.name "artist name",
   r.name "record label name"  
from
    recordlabel as r join artist as a
      on r.labelid = a.labelid
      
     
