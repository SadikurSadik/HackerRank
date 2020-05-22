/*******************************************************************************************
Problem Link: https://www.hackerrank.com/challenges/binary-search-tree-1
Platform: MySql
********************************************************************************************/

SELECT CASE
           WHEN bst.P IS NULL THEN CONCAT(bst.N, ' Root')
           WHEN bst.N IN (SELECT DISTINCT bst.P FROM bst WHERE bst.P >= 0) THEN CONCAT(bst.N, ' Inner')
           ELSE CONCAT(bst.N, ' Leaf')
           END
FROM bst
ORDER BY bst.N