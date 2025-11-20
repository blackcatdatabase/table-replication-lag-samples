-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  replication_lag_samples_latest
-- Latest replication lag samples per peer
CREATE OR REPLACE VIEW vw_replication_lag_latest AS
SELECT
  ph.peer_id,
  ph.name,
  ph.type,
  ph.apply_lag_ms,
  ph.transport_lag_ms,
  ph.lag_sampled_at
FROM vw_peer_health ph;

-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
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

