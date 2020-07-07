/*******************************************************************************************
Problem Link: https://www.hackerrank.com/challenges/what-type-of-triangle
Platform: MySql
********************************************************************************************/

SELECT CASE
           WHEN (A + B <= C OR B + C <= A OR C + A <= B) THEN 'Not A Triangle'
           WHEN (A = B AND B = C) THEN 'Equilateral'
           WHEN ((A = B AND C <> A) OR (A = C AND B <> A)) THEN 'Isosceles'
           ELSE 'Scalene'
           END
FROM TRIANGLES