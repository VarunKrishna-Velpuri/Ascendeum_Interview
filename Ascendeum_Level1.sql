with week_stats as
(select 
resource_id, weeknum,
sum(activetime)/60 as weekly_active_time
from test_de19in
group by 1,2)

select resource_id, round(avg(weekly_active_time),2) as avg_weekly_active_hours
from week_stats
group by 1