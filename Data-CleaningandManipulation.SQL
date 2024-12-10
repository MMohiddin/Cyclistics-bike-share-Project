-- Removing NULLS

CREATE OR REPLACE TABLE `cyclistic-bikeshare-1.bikeshare.bikeshare_cleaned` AS

SELECT *
FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_combined`
WHERE start_station_id IS NOT
 NULL AND end_station_id IS NOT NULL
 AND end_station_name IS NOT NULL
 AND start_station_name IS NOT NULL
 AND ride_id IS NOT NULL
 AND rideable_type IS NOT NULL
 AND started_at IS NOT NULL
 AND ended_at IS NOT NULL
 AND member_casual IS NOT NULL

-- Removing duplicates

SELECT DISTINCT*
FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_cleaned`;

--Adding trip_duration_mins and ride_day coloumns into a new table

CREATE OR REPLACE TABLE `cyclistic-bikeshare-1.bikeshare.2024_bikeshare` AS
SELECT ride_id, rideable_type, started_at, ended_at,
  start_station_name, start_station_id,
  end_station_name, end_station_id,
  member_casual, 
    TIMESTAMP_DIFF(end_at, start_at, MINUTE) AS trip_duration_mins,
       FORMAT_TIMESTAMP('%A',started_at) AS ride_day
FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_cleaned`;

-- Removing rows where trip_duration_minutes was less than 0 or more than 1440(which a day in minutes)

CREATE OR REPLACE TABLE `cyclistic-bikeshare-1.bikeshare.2024_bikeshare` AS
SELECT *
FROM `cyclistic-bikeshare-1.bikeshare.2024_bikeshare`
WHERE trip_duration_mins > 0 AND trip_duration_mins < 1440

-- Row count before and after cleaning 
SELECT COUNT(*) AS original_row_count
FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_combined`;
-- original row count was 5906269

SELECT COUNT(*) AS cleaned_row_count
FROM `cyclistic-bikeshare-1.bikeshare.2024_bikeshare`;
-- cleaned row count was 4202461

-- After cleaning 1703808 rows where removed
