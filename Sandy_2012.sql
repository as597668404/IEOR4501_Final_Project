
SELECT Year as Year,
Month as Month,
Day as Day,
Hour as Hour
FROM (
    SELECT Year, Month, Day, Hour FROM uber_data
    WHERE Year = 2012 AND ((Month = 10 AND Day IN (22,23,24,25,26,27,28,29,30,31)) OR (Month = 11 AND Day IN (1,2,3,4)))
    UNION ALL
    SELECT Year, Month, Day, Hour FROM taxi_data
    WHERE Year = 2012 AND ((Month = 10 AND Day IN (22,23,24,25,26,27,28,29,30,31)) OR (Month = 11 AND Day IN (1,2,3,4)))
    ) X;

SELECT Year as Year,
Month as Month,
Day as Day,
Hour as Hour,
SustainedWindSpeed as Sustain_Wind_Speed,
HourlyPrecipitation as Precipitation,
COUNT(*) AS Number_of_Rides
FROM (
    SELECT hourly_data.Year, hourly_data.Month, hourly_data.Day, hourly_data.Hour, hourly_data.SustainedWindSpeed, hourly_data.HourlyPrecipitation, query_2012Rides.Year, query_2012Rides.Month, query_2012Rides.Day, query_2012Rides.Hour
    FROM query_2012Rides
    JOIN hourly_data
    ON query_2012Rides.Year = hourly_data.Year AND query_2012Rides.Month = hourly_data.Month AND query_2012Rides.Day = hourly_data.Day AND query_2012Rides.Hour = hourly_data.Hour
    AND hourly_data.Year = 2012 AND ((hourly_data.Month = 10 AND hourly_data.Day IN (22,23,24,25,26,27,28,29,30,31)) OR (hourly_data.Month = 11 AND hourly_data.Day IN (1,2,3,4)))
    )
 GROUP BY Month, Day, Hour;
/n/n