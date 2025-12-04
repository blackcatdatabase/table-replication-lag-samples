-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  replication_lag_samples

ALTER TABLE replication_lag_samples ADD CONSTRAINT fk_lag_peer FOREIGN KEY (peer_id) REFERENCES peer_nodes(id) ON DELETE CASCADE;
