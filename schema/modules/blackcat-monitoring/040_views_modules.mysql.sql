-- Auto-generated from feature-modules-mysql.yaml (map@sha1:F2224DD310A34E10A80882FE9641E685E98B51E8)
-- engine: mysql
-- table:  replication_lag_latest

-- Latest replication lag samples per peer
CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_replication_lag_latest AS
SELECT
  ph.peer_id,
  ph.name,
  ph.type,
  ph.apply_lag_ms,
  ph.transport_lag_ms,
  ph.lag_sampled_at
FROM vw_peer_health ph;
