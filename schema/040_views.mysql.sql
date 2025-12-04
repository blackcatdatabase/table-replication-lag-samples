-- Auto-generated from schema-views-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  replication_lag_samples

-- Contract view for [replication_lag_samples]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_replication_lag_samples AS
SELECT
  id,
  peer_id,
  metric,
  value,
  captured_at
FROM replication_lag_samples;
