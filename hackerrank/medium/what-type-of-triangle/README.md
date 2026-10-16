# Type of Triangle

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Write a query identifying the *type* of each record in the **TRIANGLES** table using its three side lengths. Output one of the following statements for each record in the table:

- **Equilateral**: It's a triangle with $3$ sides of equal length.
- **Isosceles**: It's a triangle with $2$ sides of equal length.
- **Scalene**: It's a triangle with $3$ sides of differing lengths.
- **Not A Triangle**: The given values of *A*, *B*, and *C* don't form a triangle.

**Input Format**

The **TRIANGLES** table is described as follows:

<img src="https://s3.amazonaws.com/hr-challenge-images/12887/1443815629-ac2a843fb7-1.png" />

Each row in the table denotes the lengths of each of a triangle's three sides.

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-10-16T04:26:31.152Z  

```sql
select 
    case 
        when a + b <= c or b + c <= a or c + a <= b then 'Not A Triangle'
        when a = b and b = c then 'Equilateral'
        when a = b or b = c or c = a then 'Isosceles'
        else 'Scalene'
    end
from Triangles;

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/what-type-of-triangle/problem)