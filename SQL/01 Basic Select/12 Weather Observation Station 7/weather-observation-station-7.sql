/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-7/problem
 Platform: MySql
********************************************************************************************/

SELECT DISTINCT(`STATION`.CITY)
FROM `STATION`
WHERE `STATION`.CITY REGEXP '.*[aeiou]$';
