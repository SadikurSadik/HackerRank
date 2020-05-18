/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/salary-of-employees/problem
 Platform: MySql
********************************************************************************************/

SELECT `Employee`.name
FROM `Employee`
WHERE `Employee`.salary > 2000
  AND `Employee`.months < 10
ORDER BY `Employee`.employee_id;
