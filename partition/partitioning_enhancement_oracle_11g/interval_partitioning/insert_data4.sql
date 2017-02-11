INSERT INTO interval_tab VALUES (6, 'SIX', 'DESC 6', TO_DATE('04-DEC-2007', 'DD-MON-YYYY'));
INSERT INTO interval_tab VALUES (7, 'SEVEN', 'DESC 7', TO_DATE('30-DEC-2007', 'DD-MON-YYYY'));
COMMIT;

EXEC DBMS_STATS.gather_table_stats(USER, 'INTERVAL_TAB');

SELECT table_name, partition_name, high_value, num_rows
FROM user_tab_partitions
ORDER BY table_name, partition_name;

