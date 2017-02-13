CREATE TABLE transport_test_tab (
  id NUMBER NOT NULL,
  code VARCHAR2(10) NOT NULL,
  description VARCHAR2(50),
  created_date DATE,
  CONSTRAINT transport_test_pk PRIMARY KEY (id)
) PARTITION BY RANGE (created_date)
(
  PARTITION part_2017 VALUES LESS THAN (TO_DATE('01-JAN-2018', 'DD-MON-YYYY'))
    TABLESPACE transport_test_ts_1,
  PARTITION part_2008 VALUES LESS THAN (TO_DATE('01-JAN-2019', 'DD-MON-YYYY'))
    TABLESPACE transport_test_ts_2
);

INSERT INTO transport_test_tab VALUES (1, 'ONE', '1 ONE', SYSDATE);
INSERT INTO transport_test_tab VALUES (2, 'TWO', '2 TWO', SYSDATE);
INSERT INTO transport_test_tab VALUES (3, 'THREE', '3 THREE', ADD_MONTHS(SYSDATE, 12));
INSERT INTO transport_test_tab VALUES (4, 'FOUR', '4 FOUR', ADD_MONTHS(SYSDATE, 12));
COMMIT;

EXEC DBMS_STATS.gather_table_stats(USER, 'TRANSPORT_TEST_TAB');
