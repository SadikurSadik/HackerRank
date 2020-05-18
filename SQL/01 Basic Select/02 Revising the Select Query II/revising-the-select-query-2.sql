/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
 Platform: MySql
********************************************************************************************/

SELECT `CITY`.NAME
FROM `CITY`
WHERE `CITY`.COUNTRYCODE = 'USA'
  AND `CITY`.POPULATION > 120000;
