## SELECT

```sql
SELECT column1, column2
FROM   table_name;
```

Returns the columns you want to view from a table.

## DISTINCT – unique values

```sql
SELECT DISTINCT column_name
FROM   table_name;
```

## WHERE – row filtering

```sql
SELECT *
FROM   table_name
WHERE  condition;
```

### Logical operators

* `AND` – **all** conditions must be true
* `OR`  – at least **one** condition must be true
* `NOT` – negates a condition

### NULL checks

```sql
... WHERE column IS NULL;     -- empty / missing
... WHERE column IS NOT NULL; -- not empty
```

## LIMIT / TOP / FETCH FIRST – return N rows

* **MySQL / PostgreSQL** → `LIMIT n`
* **SQL Server**          → `TOP (n)`
* **Standard SQL**        → `FETCH FIRST n ROWS ONLY`

```sql
SELECT * FROM table_name
LIMIT 5;   -- first five rows
```

## MIN / MAX

```sql
SELECT MIN(column) AS smallest,
       MAX(column) AS biggest
FROM   table_name
WHERE  condition;
```

## Aggregate functions

| Function  | Purpose       | Example                 |
| --------- | ------------- | ----------------------- |
| `COUNT()` | how many rows | `COUNT(*)`, `COUNT(id)` |
| `SUM()`   | total value   | `SUM(amount)`           |
| `AVG()`   | average value | `AVG(score)`            |

## LIKE – pattern matching

```sql
-- names starting with 'A'
SELECT * FROM employees
WHERE  name LIKE 'A%';
```

Wildcards: **`%`** any length, **`_`** single character.

## BETWEEN – range filter

```sql
-- salaries between 3000 and 5000 (inclusive)
WHERE salary BETWEEN 3000 AND 5000;

-- dates between two days
WHERE order_date BETWEEN '2025‑01‑01' AND '2025‑01‑31';
```

## ORDER BY – sorting

```sql
SELECT * FROM products
ORDER BY price ASC;   -- ascending (default)

SELECT id, title
FROM   books
ORDER BY published DESC;  -- descending
```
