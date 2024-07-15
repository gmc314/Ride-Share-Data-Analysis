-- dataset uploaded to Google BigQuery
SELECT member_casual, AVG(ride_distance_meters) AS avg_ride_distance
FROM `oceanic-actor-427116-b6.ride_share.july2023`
GROUP BY member_casual