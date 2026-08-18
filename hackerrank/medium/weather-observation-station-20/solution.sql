WITH RankedStations AS (
    SELECT 
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num,
        COUNT(*) OVER () AS total_count
    FROM STATION
)
SELECT 
    ROUND(AVG(LAT_N), 4)
FROM RankedStations
WHERE row_num IN (FLOOR((total_count + 1) / 2.0), CEIL((total_count + 1) / 2.0));
