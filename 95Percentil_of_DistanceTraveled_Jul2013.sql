
SELECT Pickup_Date as Pickup_Date,
Distance as Distance
FROM (
    SELECT Pickup_Date, Year, Month, Distance FROM uber_data
    WHERE Year = 2013 AND Month = 7
    UNION ALL
    SELECT Pickup_Date, Year, Month, Distance FROM taxi_data
    WHERE Year = 2013 AND Month = 7
    ) X
ORDER BY Distance DESC
LIMIT 245;
/n/n