
SELECT COUNT(*) AS Number_Of_Rides, 
Year as Year,
Month as Month,
Day as Day,
AVG(Distance) as average_distance
FROM (
    SELECT Year, Month, Day, Distance FROM uber_data
    WHERE Year = 2009
    UNION ALL
    SELECT Year, Month, Day, Distance FROM taxi_data
    WHERE Year = 2009
    ) X
GROUP BY Month, Day
ORDER BY Number_Of_Rides DESC
LIMIT 10;
/n/n