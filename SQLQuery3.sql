select
	ar.name "Artist Name",
	r.name "Record Label Name"  
from
	record_label r join artist ar on r.id = ar.record_label_id
order by
	ar.name asc