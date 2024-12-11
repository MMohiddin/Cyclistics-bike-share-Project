--Finding the average duration of rides for month, day and hour for casual vs member
--MONTH
SELECT
  EXTRACT(YEAR FROM started_at) AS year,
  EXTRACT ( MONTH FROM started_at) AS month,
  member_casual,
  AVG(ride_duration) AS avg_ride_duration

FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_cleaned`
group by year,month, member_casual
order by year, month, member_casual

--DAY
SELECT
  ride_day,
  member_casual,
  AVG(ride_duration) AS avg_ride_duration

FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_cleaned`
GROUP BY ride_day, member_casual
ORDER BY 
  CASE
  WHEN ride_day = 'Sunday' THEN 1
   WHEN ride_day = 'Monday' THEN 2
    WHEN ride_day = 'Tuesday' THEN 3
    WHEN ride_day = 'Wednesday' THEN 4
    WHEN ride_day = 'Thursday' THEN 5
    WHEN ride_day = 'Friday' THEN 6
    WHEN ride_day = 'Saturday' THEN 7
    END

-- HOUR
SELECT
  EXTRACT(HOUR FROM started_at) AS ride_hour, 
  member_casual,
  AVG(ride_duration) AS avg_ride_hour
FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_cleaned`
GROUP BY ride_hour, member_casual
ORDER BY ride_hour

-- Also found out average ride duration per type of bike
SELECT
  member_casual,
  rideable_type,
  AVG(ride_duration) AS  avg_duration
FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_cleaned` 
GROUP BY rideable_type, member_casual
ORDER BY rideable_type, member_casual
