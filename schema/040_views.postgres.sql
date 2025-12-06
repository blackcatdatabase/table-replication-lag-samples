-- Auto-generated from schema-views-postgres.yaml (map@sha1:EDC13878AE5F346E7EAD2CF0A484FEB7E68F6CDD)
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
