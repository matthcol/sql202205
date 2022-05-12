select * from stars where name = 'Steve McQueen';

select * from movies where id_director in (
    select id from stars where name like '%Tarantino');
    
select * 
from movies m join stars d on m.id_director = d.id
where year = 1982
order by title;

select * 
from movies m, stars d 
where year = 1982
    and m.id_director = d.id
order by title;

-- explain plan for
select 
    d.id, d.name, 
    count(m.id) as nb_film, 
    sum(duration) as total_duration,
    listagg(m.title, ', ') within group (order by m.year) as filmo
from movies m, stars d 
where year = 1982 
    and m.id_director = d.id
group by d.id, d.name
having count(m.id) > 1
order by nb_film desc;

select count(*)
from movies
where year between 1980 and 1989;

