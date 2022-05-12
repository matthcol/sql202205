select * from database_properties;
-- DEFAULT_PERMANENT_TABLESPACE	USERS
-- DEFAULT_TEMP_TABLESPACE	TEMP

select * from dba_users;

grant advisor to movie;
grant ADMINISTER SQL TUNING SET, SELECT ANY DICTIONARY to movie;