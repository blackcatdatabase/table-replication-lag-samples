-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  replication_lag_samples

CREATE TABLE IF NOT EXISTS replication_lag_samples (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  peer_id BIGINT UNSIGNED NOT NULL,
  metric ENUM('apply_lag_ms','transport_lag_ms') NOT NULL,
  value BIGINT NOT NULL,
  captured_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  INDEX idx_lag_peer_time (peer_id, captured_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
