WITH challenge_counts AS (
    SELECT 
        h.hacker_id, 
        h.name, 
        COUNT(c.challenge_id) AS total_count
    FROM hackers h
    JOIN challenges c ON h.hacker_id = c.hacker_id
    GROUP BY h.hacker_id, h.name
)
SELECT hacker_id, name, total_count
FROM challenge_counts
WHERE total_count = (SELECT MAX(total_count) FROM challenge_counts)
   OR total_count IN (
       SELECT total_count
       FROM challenge_counts
       GROUP BY total_count
       HAVING COUNT(*) = 1
   )
ORDER BY total_count DESC, hacker_id ASC;
