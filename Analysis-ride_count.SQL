-- Calculating ride count per month, day and hour for casual vs member
-- Month
SELECT 
  EXTRACT (MONTH FROM started_at) as ride_month,
  EXTRACT (YEAR FROM started_at) as ride_year,
  member_casual,
  COUNT (*) AS ride_count
FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_cleaned`
GROUP BY ride_month, ride_year, member_casual
ORDER BY ride_year, ride_month, member_casual
-- DAY
SELECT
  ride_day,
  member_casual,
  COUNT(*) AS ride_count
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
  COUNT(*) AS ride_count
FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_cleaned`
GROUP BY ride_hour, member_casual 
ORDER BY 
  member_casual, ride_hour
