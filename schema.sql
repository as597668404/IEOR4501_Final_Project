
CREATE TABLE IF NOT EXISTS HourlyWeather
(
    HourlyWeather_id INTEGER PRIMARY KEY AUTOINCREMENT,
    DATE DATE,
    TIME TIME,
    DayofWeek TEXT,
    REPORT_TYPE TEXT,
    HourlyDewPointTemperature INTEGER,
    HourlyDryBulbTemperature INTEGER,
    HourlyPrecipitation REAL,
    HourlyWindGustSpeed INTEGER,
    HourlyWindSpeed INTEGER,
    Sunrise INTEGER,
    Sunset INTEGER,
    SustainedWindSpeed INTEGER
)

CREATE TABLE IF NOT EXISTS DailyWeather
(
    DailyWeather_id INTEGER PRIMARY KEY AUTOINCREMENT,
    DATE DATE,
    DayofWeek TEXT,
    REPORT_TYPE TEXT,
    Sunrise INTEGER,
    Sunset INTEGER,
    DailyAverageDewPointTemperature INTEGER,
    DailyAverageDryBulbTemperature INTEGER,
    DailyAverageWindSpeed REAL,
    DailyMaximumDryBulbTemperature INTEGER,
    DailyMinimumDryBulbTemperature INTEGER,
    DailyPeakWindDirection INTEGER,
    DailyPeakWindSpeed INTEGER,
    DailyPrecipitation REAL,
    SustainedWindSpeed INTEGER
)

CREATE TABLE IF NOT EXISTS TaxiRides
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pickup_datetime DATETIME,
    dropoff_datetime DATETIME,
    passenger_count INTEGER,
    trip_distance REAL,
    pickup_longitude REAL,
    pickup_latitude REAL,
    dropoff_longitude REAL,
    dropoff_latitude REAL,
    fare_amount REAL,
    extra REAL,
    tip_amount REAL,
    tolls_amount REAL,
    total_amount REAL


CREATE TABLE IF NOT EXISTS UberRides
(
    UberRides_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Pickup_Date DATE,
    Pickup_Time TIME,
    DayofWeek TEXT,
    Pickup_Longitude REAL,
    Pickup_Latitude REAL,
    Dropoff_Longitude REAL,
    Dropoff_Latitude REAL,
    Passenger_Count INTEGER,
    Distance REAL
)
