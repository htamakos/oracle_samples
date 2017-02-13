col table_name for a20
col partition_name for a20
col tablespace_name for a20

SELECT table_name, partition_name, tablespace_name, num_rows
FROM user_tab_partitions;

