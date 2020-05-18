/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-8/problem
 Platform: MySql
********************************************************************************************/

SELECT DISTINCT(`STATION`.CITY)
FROM `STATION`
WHERE `STATION`.CITY REGEXP '^[aeiou].*[aeiou]$';
