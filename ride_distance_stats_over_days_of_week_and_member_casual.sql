SELECT member_casual, day_of_week, AVG(ride_distance_meters) AS avg_ride_distance, MAX(ride_distance_meters) AS max_ride_distance, MIN(ride_distance_meters) AS min_ride_distance
FROM `oceanic-actor-427116-b6.ride_share.july2023`
GROUP BY member_casual, day_of_week
ORDER BY member_casual, day_of_week 