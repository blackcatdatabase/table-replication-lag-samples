-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  replication_lag_samples

CREATE INDEX IF NOT EXISTS idx_lag_peer_time ON replication_lag_samples (peer_id, captured_at);
