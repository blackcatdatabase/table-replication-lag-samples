-- Auto-generated from feature-modules-postgres.yaml (map@sha1:A8D58997CBCD2EEE06670B1C02AD89FA65E66F67)
-- engine: postgres
-- table:  peer_health

-- Peer health with last lag samples
CREATE OR REPLACE VIEW vw_peer_health AS
WITH ranked AS (
  SELECT
    peer_id,
    metric,
    value,
    captured_at,
    ROW_NUMBER() OVER (PARTITION BY peer_id, metric ORDER BY captured_at DESC) AS rn
  FROM replication_lag_samples
)
SELECT
  p.id        AS peer_id,
  p.name,
  p.type,
  p.location,
  p.status,
  p.last_seen,
  COALESCE(MAX(CASE WHEN r.metric = $$apply_lag_ms$$ THEN r.value END), 0)    AS apply_lag_ms,
  COALESCE(MAX(CASE WHEN r.metric = $$transport_lag_ms$$ THEN r.value END), 0) AS transport_lag_ms,
  MAX(r.captured_at) AS lag_sampled_at
FROM peer_nodes p
LEFT JOIN ranked r ON r.peer_id = p.id AND r.rn = 1
GROUP BY p.id, p.name, p.type, p.location, p.status, p.last_seen;

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

