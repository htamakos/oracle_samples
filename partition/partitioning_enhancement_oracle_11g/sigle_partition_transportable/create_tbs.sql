CREATE TABLESPACE transport_test_ts_1
  DATAFILE SIZE 128K AUTOEXTEND ON NEXT 128K;

CREATE TABLESPACE transport_test_ts_2
  DATAFILE SIZE 128K AUTOEXTEND ON NEXT 128K;

ALTER USER test
  QUOTA UNLIMITED ON transport_test_ts_1
  QUOTA UNLIMITED ON transport_test_ts_2;

