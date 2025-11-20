<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – replication_lag_samples

Snapshot metrics measuring replication lag per peer.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| peer_id | BIGINT | NO | — | Peer being measured (FK peer_nodes.id). |  |
| metric | TEXT | NO | — | Metric name (apply_lag_ms, transport_lag_ms). |  |
| captured_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Capture timestamp (UTC). |  |