
SELECT (DayofWeek) as Day_of_Week,
COUNT(*) AS counts
FROM uber_data
GROUP BY DayofWeek
ORDER BY counts DESC;
/n/n