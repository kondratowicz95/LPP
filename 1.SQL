#standardSQL
SELECT
fullVisitorId, CAST(date as DATE) AS date_of_visitStartTime, totals.transactions AS total_transactions_per_user
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE
  _TABLE_SUFFIX BETWEEN '20170601' AND '20170630'
  AND totals.transactions IS NOT NULL
  ORDER BY date
