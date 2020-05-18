/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/revising-the-select-query
 Platform: MySql
********************************************************************************************/

SELECT *
FROM `CITY`
WHERE `CITY`.POPULATION > 100000
  AND `CITY`.COUNTRYCODE = 'USA';