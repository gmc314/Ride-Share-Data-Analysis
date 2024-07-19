-- dataset uploaded to Google BigQuery
SELECT 
  EXTRACT(year FROM started_at) AS year,
  EXTRACT(month FROM started_at) AS month,
  COUNT(*) AS total,
  SUM(member_casual_binary) AS members, 
  COUNT(*) - SUM(member_casual_binary) AS casuals
FROM `oceanic-actor-427116-b6.ride_share.fullyear` 
GROUP BY year, month
ORDER BY year, month