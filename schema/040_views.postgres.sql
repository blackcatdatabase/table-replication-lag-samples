-- Auto-generated from schema-views-postgres.yaml (map@sha1:5C6FE96DC2067A978A357A1DCB8631B46C71D429)
-- engine: postgres
-- table:  replication_lag_samples

-- Contract view for [replication_lag_samples]
CREATE OR REPLACE VIEW vw_replication_lag_samples AS
SELECT
  id,
  peer_id,
  metric,
  value,
  captured_at
FROM replication_lag_samples;
