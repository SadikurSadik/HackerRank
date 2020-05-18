/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-4/problem
 Platform: MySql
********************************************************************************************/

SELECT COUNT(`STATION`.CITY) - COUNT(DISTINCT(`STATION`.CITY)) FROM `STATION`;
