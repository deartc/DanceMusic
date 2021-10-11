select
    r.name "Record Label Name"  
from
    record_label r left join artist a on r.id = a.record_label_id 
where
    a.record_label_id is null