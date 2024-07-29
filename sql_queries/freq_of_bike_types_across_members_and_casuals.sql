-- dataset uploaded to Google BigQuery
SELECT member_casual, rideable_type, ROUND(COUNT(*) / SUM(COUNT(*)) OVER(), 2) * 100 || '%' AS percent_of_total
FROM `oceanic-actor-427116-b6.ride_share.fullyear` 
GROUP BY member_casual, rideable_type
ORDER BY member_casual DESC