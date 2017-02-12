col table_name for a25
col partition_name for a20
col high_value for a40

SELECT table_name, partition_name, high_value, num_rows
FROM  user_tab_partitions
ORDER BY table_name, partition_name;

