-- Auto-generated from schema-map-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  replication_lag_samples

CREATE INDEX IF NOT EXISTS idx_lag_peer_time ON replication_lag_samples (peer_id, captured_at);
