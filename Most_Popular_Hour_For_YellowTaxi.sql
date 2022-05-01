
SELECT (Hour) AS hours,
COUNT (*) AS counts
FROM taxi_data
GROUP BY hour
ORDER BY counts DESC;
/n/n