/*******************************************************************************************
Problem Link: https://www.hackerrank.com/challenges/the-pads
Platform: MySql
********************************************************************************************/

SELECT concat(occupations.`Name`, '(', LEFT(occupations.Occupation, 1), ')')
FROM occupations
ORDER BY `Name`;

SELECT CONCAT('There are total ', COUNT(occupations.`Name`), ' ', LOWER(occupations.Occupation), 's.')
FROM occupations
GROUP BY occupations.Occupation
ORDER BY COUNT(occupations.`Name`), occupations.`Occupation`;