SHOW timezone;

SELECT now();

CREATE Table timez(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);


INSERT into timez VALUES('2024-01-12 10:45:00','2024-01-12 10:45:00')

SELECT * from timez;

SELECT CURRENT_DATE;

SELECT now()::date;
SELECT now()::time;

SELECT to_char(now(), 'yyyy/mm/dd');
SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

SELECT age(CURRENT_DATE, '2004-10-17');

SELECT *, age(CURRENT_DATE, dob) from students;

SELECT extract (MONTH from '2025-03-19'::date);

