.import --csv city.csv city
select timezone, COUNT(*) as city_count
from city
where federal_district in ('Сибирский','Приволжский')
group by timezone
order by timezone;
