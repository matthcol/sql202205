select m.title, m.year, p.role
from 
    movies m 
    join play p on m.id = p.id_movie
    join stars s on p.id_actor = s.id
where
    s.name = 'Quentin Tarantino'
order by m.year, m.title;

alter table movies add constraint uniq_movie_title_year unique(title,year);

select * from movies where year is null; -- 0 rows
alter table movies modify year not null;

alter table movies drop CONSTRAINT pk_movies; -- not possible, rérérencée par FK
alter table movies add (bo BLOB);

-- qqs vues statitiques utiles
select * from user_indexes;
select * from user_segments;
select * from user_constraints;
select * from user_cons_columns;

-- exemple de code dynamique en fonction du dictionnaire de données
select 'alter table ' || table_name || ' drop constraint ' || constraint_name from user_constraints;

select * from all_tables where owner = 'MOVIE';

-- 271
select * from v$sql where lower(sql_text) like '%movies%';

----------------------
-- indexes explicit --
----------------------

