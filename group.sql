SELECT country, count(*) from students
    GROUP BY country;
SELECT country, avg(age) from students
    GROUP BY country
    HAVING avg(age)>20.60;

SELECT extract (year from dob)as brith_year, count(*)
    FROM students
    GROUP BY brith_year;