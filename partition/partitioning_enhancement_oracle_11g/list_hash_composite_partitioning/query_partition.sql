col table_name for a20
col partition_name for a20
col subpartition_name for a20

SELECT table_name, partition_name, subpartition_name, num_rows
FROM user_tab_subpartitions
ORDER BY table_name, partition_name, subpartition_name;
