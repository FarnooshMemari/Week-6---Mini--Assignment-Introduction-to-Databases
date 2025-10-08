# University Rankings – SQLite CRUD Assignment

## Overview
This project demonstrates how to explore and manipulate a SQLite database using SQL in DBeaver.  
The dataset contains global university rankings from 2012–2015.

## Steps and Purpose
1. **Explore Dataset** – Checked structure, counts, and distinct values to understand the data.
2. **Basic Analysis** – Calculated yearly average, min, and max scores to summarize performance trends.
3. **Insert (Create)** – Added Duke Tech (USA, 2014) to simulate new rankings.
4. **Query (Read)** – Found how many Japanese universities ranked in the top 200 (2013).
5. **Update** – Corrected Oxford’s 2014 score by +1.2.
6. **Delete** – Removed 2015 entries with scores below 45.
7. **Validate** – Recounted total rows to ensure consistency.

## Results Summary
| Operation | Action | Verified Change |
|------------|---------|-----------------|
| Insert | Added Duke Tech (2014) | 1 new row |
| Read | Japan Top 200 (2013) | N universities |
| Update | Oxford 2014 +1.2 | 1 row updated |
| Delete | Scores <45 in 2015 | K rows deleted |
| Final Check | Row count verified | ✅ |

## Tools
- SQLite  
- DBeaver  

## Reflection
This assignment helped me understand how to explore and manipulate real datasets through SQL CRUD operations and summarize meaningful insights.
