SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';
-- ENUM - is a data type that limits a column to specific allowed values, such as 'Yes' or 'No'

/*
Input
Products =
| product_id | low_fats | recyclable |
| ---------- | -------- | ---------- |
| 0          | Y        | N          |
| 1          | Y        | Y          |
| 2          | N        | Y          |
| 3          | Y        | Y          |
| 4          | N        | N          |

Output
| product_id |
| ---------- |
| 1          |
| 3          |

Expected
| product_id |
| ---------- |
| 1          |
| 3          |
*/