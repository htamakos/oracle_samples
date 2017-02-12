INSERT INTO system_partitioned_tab PARTITION (sort_1) VALUES (1, 'ONE', 'ONE', SYSDATE);
INSERT INTO system_partitioned_tab PARTITION (sort_2) VALUES (2, 'TWO', 'TOW', SYSDATE);
COMMIT;

EXEC DBMS_STATS.gather_table_stats(USER, 'SYSTEM_PARTITIONED_TAB');

col table_name for a25
col partition_name for a20
col high_value for a10

SELECT table_name, partition_name, high_value, num_rows
FROM user_tab_partitions
ORDER BY table_name, partition_name;

