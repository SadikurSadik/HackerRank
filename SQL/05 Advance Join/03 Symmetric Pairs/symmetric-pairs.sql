/*******************************************************************************************
 Problem Link: https://www.hackerrank.com/challenges/symmetric-pairs/problem
 Platform: MySql
********************************************************************************************/

SET @row_number := 0;
SET @tbl2_row_number := 0;
select x1, y1
from (select @row_number := @`row_number` + 1 as row_no, f1.x as x1, f1.y as y1 from functions f1 order by x1) tbl
         cross join (select @tbl2_row_number := @tbl2_row_number + 1 as row_no, f2.x as x2, f2.Y as y2
                     from functions f2
                     order by x2) tbl2
                    ON tbl.row_no < tbl2.row_no
where x1 = y2
  and x2 = y1
order by x1;