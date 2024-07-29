-- dataset uploaded to Google BigQuery
SELECT CONCAT(yr, "-", mth) AS months, avg_ride_seconds
FROM  
  (SELECT EXTRACT(YEAR FROM started_at) AS yr, 
       EXTRACT(MONTH FROM started_at) AS mth, 
       ROUND(AVG(ride_length_seconds), 4) AS avg_ride_seconds
  FROM `oceanic-actor-427116-b6.ride_share.fullyear`
  WHERE member_casual = "member"
  GROUP BY yr, mth
  ORDER BY yr, mth)