
CREATE TABLE IF NOT EXISTS HourlyWeather
(
    HourlyWeather_id INTEGER PRIMARY KEY AUTOINCREMENT,
    DateTime DATETIME,
    Date DATE,
    Time TIME,
    DayofWeek INTEGER,
    REPORT_TYPE TEXT,
    HourlyDewPointTemperature REAL,
    HourlyDryBulbTemperature REAL,
    HourlyPrecipitation REAL,
    HourlyWindGustSpeed REAL,
    HourlyWindSpeed REAL,
    Sunrise INTEGER,
    Sunset INTEGER,
    Year INTEGER,
    Month INTEGER,
    Day INTEGER,
    Hour INTEGER,
    SustainedWindSpeed REAL
);

CREATE TABLE IF NOT EXISTS DailyWeather
(
    DailyWeather_id INTEGER PRIMARY KEY AUTOINCREMENT,
    DateTime DATETIME,
    Date DATE,
    REPORT_TYPE TEXT,
    DayofWeek INTEGER,
    Sunrise INTEGER,
    Sunset INTEGER,
    DailyAverageDewPointTemperature REAL,
    DailyAverageDryBulbTemperature REAL,
    DailyAverageWindSpeed REAL,
    DailyMaximumDryBulbTemperature REAL,
    DailyMinimumDryBulbTemperature REAL,
    DailyPeakWindDirection REAL,
    DailyPeakWindSpeed REAL,
    DailyPrecipitation REAL,
    SustainedWindSpeed REAL,
    Year INTEGER,
    Month INTEGER,
    Day INTEGER
);

CREATE TABLE IF NOT EXISTS TaxiRides
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Pickup_DateTime DATETIME,
    Pickup_Date DATE,
    Pickup_Time TIME,
    Dropoff_DateTime DATETIME,
    Dropoff_Date DATE,
    Dropoff_Time TIME,
    DayofWeek INTEGER,
    Passenger_Count INTEGER,
    Trip_Distance_Fake REAL,
    Pickup_Longitude REAL,
    Pickup_Latitude REAL,
    Dropoff_Longitude REAL,
    Dropoff_Latitude REAL,
    Fare_Amount REAL,
    Extra REAL,
    Tip_Amount REAL,
    Tolls_Amount REAL,
    Total_Amount REAL,
    Year INTEGER,
    Month INTEGER,
    Day INTEGER,
    Hour INTEGER,
    Distance REAL
);

CREATE TABLE IF NOT EXISTS UberRides
(
    UberRides_ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Fare_Amount REAL,
    Pickup_DateTime DATETIME,
    Pickup_Date DATE,
    Pickup_Time TIME,
    DayofWeek INTEGER,
    Pickup_Longitude REAL,
    Pickup_Latitude REAL,
    Dropoff_Longitude REAL,
    Dropoff_Latitude REAL,
    Passenger_Count INTEGER,
    Year INTEGER,
    Month INTEGER,
    Day INTEGER,
    Hour INTEGER,
    Distance REAL
);
