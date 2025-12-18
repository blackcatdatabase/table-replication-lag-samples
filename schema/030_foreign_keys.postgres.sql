-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  replication_lag_samples

ALTER TABLE replication_lag_samples ADD CONSTRAINT fk_lag_peer FOREIGN KEY (peer_id) REFERENCES peer_nodes(id) ON DELETE CASCADE;
