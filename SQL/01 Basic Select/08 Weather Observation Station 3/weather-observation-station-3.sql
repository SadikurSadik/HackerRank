/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-3/problem
 Platform: MySql
********************************************************************************************/

SELECT DISTINCT(`STATION`.CITY)
FROM `STATION`
WHERE `STATION`.ID % 2 = 0;
