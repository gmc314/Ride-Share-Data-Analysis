-- dataset uploaded to Google BigQuery
SELECT member_casual, AVG(start_lat) AS avg_start_lat, AVG(start_lng) AS avg_start_lng, AVG(end_lat) AS avg_end_lat, AVG(end_lng) AS avg_end_lng 
FROM `oceanic-actor-427116-b6.ride_share.2023july`
GROUP BY member_casual