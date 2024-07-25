-- dataset uploaded to Google BigQuery
SELECT member_casual,
        EXTRACT(YEAR FROM started_at) AS year,
        EXTRACT(MONTH FROM started_at) AS month,        
        day_of_week,
        COUNT(*) AS number_of_rides
FROM `oceanic-actor-427116-b6.ride_share.fullyear`
WHERE start_station_name <> end_station_name
GROUP BY member_casual,
         year,
         month,
         day_of_week
ORDER BY member_casual,
         year,
         month,
         day_of_week