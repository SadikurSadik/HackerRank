/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/draw-the-triangle-2/problem
 Platform: MySql
********************************************************************************************/

SET @number = 0;
SELECT REPEAT('* ', @number := @number + 1)
from information_schema.TABLES
limit 20;