-- dataset uploaded to Google BigQuery
SELECT member_casual, day_of_week, ROUND(COUNT(*) * 100 / SUM(COUNT(*)) OVER(), 2) || '%' AS percentage_of_total
FROM `oceanic-actor-427116-b6.ride_share.fullyear` 
GROUP BY member_casual, day_of_week 
ORDER BY  member_casual, day_of_week