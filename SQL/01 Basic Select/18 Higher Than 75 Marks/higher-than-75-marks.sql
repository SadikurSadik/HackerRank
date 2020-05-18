/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/more-than-75-marks/problem
 Platform: MySql
********************************************************************************************/

SELECT `STUDENTS`.Name
FROM `STUDENTS`
WHERE `STUDENTS`.Marks > 75
ORDER BY SubStr(`STUDENTS`.Name, LENGTH(`STUDENTS`.Name) - 2, LENGTH(`STUDENTS`.Name)), `STUDENTS`.ID;
