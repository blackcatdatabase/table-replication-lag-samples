-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  replication_lag_samples
CREATE INDEX IF NOT EXISTS idx_lag_peer_time ON replication_lag_samples (peer_id, captured_at);
