
SELECT COUNT(*) AS Number_Of_Rides, 
Pickup_Date as Pickup_Date,
AVG(Distance) as average_distance
FROM (
    SELECT Pickup_Date, Year, Distance FROM uber_data
    WHERE Year = 2009
    UNION ALL
    SELECT Pickup_Date, Year, Distance FROM taxi_data
    WHERE Year = 2009
    ) X
GROUP BY Pickup_Date
ORDER BY Number_Of_Rides DESC
LIMIT 10;
/n/n