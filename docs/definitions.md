# replication_lag_samples

Snapshot metrics measuring replication lag per peer.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| captured_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Capture timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| metric | TEXT | NO |  | Metric name (apply_lag_ms, transport_lag_ms). |
| peer_id | BIGINT | NO |  | Peer being measured (FK peer_nodes.id). |
| value | BIGINT | NO |  | Measured value (ms). |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_lag_peer_time | peer_id,captured_at | INDEX idx_lag_peer_time (peer_id, captured_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_lag_peer | peer_id | peer_nodes(id) | ON DELETE CASCADE |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_lag_peer_time | peer_id,captured_at | CREATE INDEX IF NOT EXISTS idx_lag_peer_time ON replication_lag_samples (peer_id, captured_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_lag_peer | peer_id | peer_nodes(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_replication_lag_samples | mysql | algorithm=MERGE, security=INVOKER | [packages\replication-lag-samples\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/replication-lag-samples/schema/040_views.mysql.sql) |
| vw_replication_lag_samples | postgres |  | [packages\replication-lag-samples\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/replication-lag-samples/schema/040_views.postgres.sql) |
