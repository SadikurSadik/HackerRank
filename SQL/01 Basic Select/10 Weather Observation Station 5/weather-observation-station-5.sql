/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
 Platform: MySql
********************************************************************************************/

SELECT `STATION`.CITY, LENGTH(`STATION`.CITY)
FROM `STATION`
ORDER BY LENGTH(`STATION`.CITY), CITY
LIMIT 1;

SELECT `STATION`.CITY, LENGTH(`STATION`.CITY)
FROM `STATION`
ORDER BY LENGTH(`STATION`.CITY) DESC, CITY
LIMIT 1;
