 /*
 * Course: SQL for Data Analysis – Advanced Querying (Maven Analytics)
 * Topic: Basic JOINs – assignment & practice notes
 * Date: 2025-08-04
 */

--  INNER JOIN   : keep matches in both tables
--  LEFT  JOIN   : keep all rows from the left table + matched rows
--  RIGHT JOIN   : keep all rows from the right table + matched rows
--  FULL  JOIN   : keep all rows from both tables (if supported)

/* Example 1: match countries available in both tables */
SELECT *
FROM   table1 AS t1
JOIN   table2 AS t2                 -- default = INNER JOIN
       ON t1.country = t2.country;


/* -------------------------------------------------------------
   2. Course assignment: "Which products exist in one table but
      not in the other?"
   ------------------------------------------------------------- */

-- Task: Find products that are present in the 'products' table
--       but have never been ordered (do not appear in 'orders').

USE maven_advanced_sql;

SELECT  p.product_id,
        p.product_name
FROM    products AS p
LEFT JOIN orders AS o
       ON p.product_id = o.product_id
WHERE   o.product_id IS NULL;       -- NULL == no matching order