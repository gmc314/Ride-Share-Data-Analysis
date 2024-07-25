-- dataset uploaded to Google BigQuery
SELECT member_casual,
        EXTRACT(YEAR FROM started_at) AS yr, 
        EXTRACT(MONTH FROM started_at) AS mth,
        AVG(ride_length_seconds) AS avg_ride_time,
        MAX(ride_length_seconds) AS max_ride_time
FROM `oceanic-actor-427116-b6.ride_share.fullyear`
GROUP BY member_casual,
          yr,
          mth
ORDER BY member_casual,
          yr,
          mth