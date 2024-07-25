-- dataset uploaded to Google BigQuery
SELECT EXTRACT(YEAR FROM started_at) AS yr,
      EXTRACT(MONTH FROM started_at) AS mth,
      rideable_type,
      COUNT(*) AS number_of_rides
FROM `oceanic-actor-427116-b6.ride_share.fullyear`
GROUP BY yr, mth, rideable_type
ORDER BY yr, mth, rideable_type