-- Finding out most popular start and end station for casual vs members

-- START
SELECT 
  start_station_name,
  start_lat, start_lng, 
  COUNT(*) AS popular_station
FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_cleaned`
WHERE member_casual = 'member' -- Switched the name to casual for popular stations for casual riders
GROUP BY start_station_name, start_lat, start_lng
ORDER BY popular_station DESC

--END 
SELECT 
  end_station_name,
  end_lat, end_lng,
  COUNT(*) AS popular_station
FROM `cyclistic-bikeshare-1.bikeshare.bikeshare_cleaned`
WHERE member_casual = 'member'-- Switched the name to casual for popular stations for casual riders
GROUP BY start_station_name, start_lat, start_lng
ORDER BY popular_station DESC
