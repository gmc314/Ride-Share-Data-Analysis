-- dataset uploaded to Google BigQuery
SELECT member_casual, rideable_type, AVG(ride_length_seconds), MAX(ride_length), MIN(ride_length) 
FROM `oceanic-actor-427116-b6.ride_share.2023july`
GROUP BY member_casual, rideable_type