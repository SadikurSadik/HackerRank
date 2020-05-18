/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/japanese-cities-name/problem
 Platform: MySql
********************************************************************************************/

SELECT `CITY`.NAME
FROM `CITY`
WHERE `CITY`.COUNTRYCODE = 'JPN';
