
SELECT Year as Year,
Month as Month,
Day as Day
FROM (
    SELECT Year, Month, Day FROM uber_data
    WHERE Year = 2014
    UNION ALL
    SELECT Year, Month, Day FROM taxi_data
    WHERE Year = 2014
    ) X;

SELECT Year as Year,
Month as Month,
Day as Day,
DailyAverageWindSpeed as Wind_Speed,
Count(*) AS Number_of_Rides
FROM (
    SELECT daily_data.Year, daily_data.Month, daily_data.Day, daily_data.DailyAverageWindSpeed, query_2014Rides.Year, query_2014Rides.Month, query_2014Rides.Day
    FROM query_2014Rides
    JOIN daily_data
    ON query_2014Rides.Year = daily_data.Year AND query_2014Rides.Month = daily_data.Month AND query_2014Rides.Day = daily_data.Day
    AND daily_data.Year = 2014
    )
GROUP BY Month, Day
ORDER BY Wind_Speed DESC
LIMIT 10;
/n/n