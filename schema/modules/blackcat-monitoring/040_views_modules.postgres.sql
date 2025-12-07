-- Auto-generated from feature-modules-postgres.yaml (map@sha1:A8D58997CBCD2EEE06670B1C02AD89FA65E66F67)
-- engine: postgres
-- table:  replication_lag_latest

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
