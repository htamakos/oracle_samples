INSERT INTO interval_tab VALUES (5, 'FIVE', 'DEC 5', TO_DATE('01-JAN-2009', 'DD-MON-YYYY'));
INSERT INTO interval_tab VALUES (4, 'FOUR', 'DEC 4', TO_DATE('20-JAN-2009', 'DD-MON-YYYY'));
COMMIT;

EXEC DBMS_STATS.gather_table_stats(USER, 'INTERVAL_TAB');

SELECT table_name, partition_name, high_value, num_rows
FROM user_tab_partitions
ORDER BY table_name, partition_name;
