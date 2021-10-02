select
   a.name "artist name",
   r.name "record label name"  
from
    recordlabel as r join artist as a
      on r.labelid = a.labelid