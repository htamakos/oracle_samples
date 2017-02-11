INSERT INTO interval_tab VALUES (1, 'ONE', 'DESC 1', TO_DATE('10-OCT-2007', 'DD-MON-YYYY'));
INSERT INTO interval_tab VALUES (2, 'TWO', 'DESC 2', TO_DATE('31-OCT-2007', 'DD-MON-YYYY'));
COMMIT;
EXEC DBMS_STATS.gather_table_stats(USER, 'INTERVAL_TAB');

SELECT table_name, partition_name, high_value, num_rows
FROM user_tab_partitions
ORDER BY table_name, partition_name;
