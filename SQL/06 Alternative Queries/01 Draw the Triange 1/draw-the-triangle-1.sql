/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem
 Platform: MySql
********************************************************************************************/

SET @number = 21;
SELECT REPEAT('* ', @number := @number - 1)
from information_schema.TABLES
limit 20;