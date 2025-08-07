Sometimes, the primary key of a table consists of **more than one column** (e.g., `year` + `country`). In such cases, joining only by one column can give incorrect results due to duplicates or mismatches.

###  Key Concepts
- Join **on multiple columns** using `AND` in the `ON` clause.
- Column names **don't need to be identical** – only their values must match.
- Use **table aliases** (`hs`, `ir`) for clarity.

###  Syntax Example

```sql
SELECT ...
FROM happiness_scores AS hs
INNER JOIN inflation_rates AS ir
  ON hs.country = ir.country_name
 AND hs.year = ir.year;
````

###  Output

Correctly merged data from both tables, where **year AND country** match.

---


In real-world data, useful information is often spread across **3 or more tables**. SQL lets us combine them step-by-step using additional JOIN clauses.

###  Best Practices

* Start with a **main table** (usually the most complete one).
* Add **LEFT JOINs** progressively.
* Keep your SQL **clean and readable** with indentation and aliases.
* Only select **columns you need** in the final result.

###  Multi-Join Syntax Example

```sql
SELECT
  hs.year,
  hs.country,
  hs.score,
  cs.continent,
  ir.inflation_rate
FROM happiness_scores AS hs
LEFT JOIN country_stats AS cs
  ON hs.country = cs.country
LEFT JOIN inflation_rates AS ir
  ON hs.country = ir.country_name
 AND hs.year = ir.year;
```

###  Output

A combined table with:

* `year`, `country` from `happiness_scores`
* `continent` from `country_stats`
* `inflation_rate` from `inflation_rates`



