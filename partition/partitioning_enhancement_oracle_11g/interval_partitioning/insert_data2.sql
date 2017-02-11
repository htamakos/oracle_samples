INSERT INTO interval_tab VALUES (3, 'THREE', 'DESC 3', TO_DATE('1-NOV-2007', 'DD-MON-YYYY'));
INSERT INTO interval_tab VALUES (4, 'FOUR', 'DESC 4', TO_DATE('10-NOV-2007', 'DD-MON-YYYY'));
COMMIT;

EXEC DBMS_STATS.gather_table_stats(USER, 'INTERVAL_TAB');

SELECT table_name, partition_name, high_value, num_rows
FROM user_tab_partitions
ORDER BY table_name, partition_name;
