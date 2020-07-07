/*******************************************************************************************
Problem Link: https://www.hackerrank.com/challenges/occupations
Platform: MySql
********************************************************************************************/

SET @id_doctor = 0;
SET @id_professor = 0;
SET @id_singer = 0;
SET @id_actor = 0;

SET @max = (SELECT MAX(tbl.ocupation_count)
            FROM (SELECT COUNT(*) as ocupation_count FROM OCCUPATIONS group by Occupation) tbl);

SELECT doctor.Name, professor.Name, singer.Name, actor.Name
FROM (
         SELECT *
         FROM (SELECT Name, @id_doctor := @id_doctor + 1 AS id
               FROM OCCUPATIONS
               WHERE Occupation = 'Doctor'
               ORDER BY Name) tbl1
         UNION ALL
         SELECT NULL AS doctor, @id_doctor := @id_doctor + 1 AS id
         FROM OCCUPATIONS
         WHERE @id_doctor < @max
     ) doctor
         JOIN (
    SELECT *
    FROM (SELECT Name, @id_professor := @id_professor + 1 AS id
          FROM OCCUPATIONS
          WHERE Occupation = 'Professor'
          ORDER BY Name) tbl1
    UNION ALL
    SELECT NULL AS Name, @id_professor := @id_professor + 1 AS id
    FROM OCCUPATIONS
    WHERE @id_professor < @max
) professor ON doctor.id = professor.id
         JOIN (
    SELECT *
    FROM (SELECT Name, @id_singer := @id_singer + 1 AS id
          FROM OCCUPATIONS
          WHERE Occupation = 'Singer'
          ORDER BY Name) tbl1
    UNION ALL
    SELECT NULL AS Name, @id_singer := @id_singer + 1 AS id
    FROM OCCUPATIONS
    WHERE @id_singer < @max
) singer ON professor.id = singer.id
         JOIN (
    SELECT *
    FROM (SELECT Name, @id_actor := @id_actor + 1 AS id FROM OCCUPATIONS WHERE Occupation = 'Actor' ORDER BY Name) tbl1
    UNION ALL
    SELECT NULL AS Name, @id_actor := @id_actor + 1 AS id
    FROM OCCUPATIONS
    WHERE @id_actor < @max
) actor ON singer.id = actor.id