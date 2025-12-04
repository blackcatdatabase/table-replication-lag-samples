-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  replication_lag_samples

ALTER TABLE replication_lag_samples ADD CONSTRAINT fk_lag_peer FOREIGN KEY (peer_id) REFERENCES peer_nodes(id) ON DELETE CASCADE;
