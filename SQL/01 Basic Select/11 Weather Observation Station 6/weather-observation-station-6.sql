/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
 Platform: MySql
********************************************************************************************/

SELECT `STATION`.CITY
FROM `STATION`
WHERE `STATION`.CITY REGEXP '^[aeiou]';
