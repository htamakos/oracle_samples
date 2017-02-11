EXEC DBMS_STATS.gather_table_stats(USER, 'INTERVAL_TAB');

col table_name for a20
col partition_name for a20
col high_value for a40

SELECT table_name, partition_name, high_value, num_rows
FROM user_tab_partitions
ORDER BY table_name, partition_name;
