DECLARE
  l_code VARCHAR2(10);
BEGIN
  FOR i IN 1 .. 40 LOOP
    IF MOD(i, 2) = 0 THEN
      l_code := 'BB';
    ELSE
      l_code := 'AA';
    END IF;
    
    INSERT INTO list_hash_tab (id, code, description, created_date)
    VALUES (i, l_code, 'Description for ' || i || ' ' || l_code, SYSDATE);
  END LOOP;
  COMMIT;
END;
/

EXEC DBMS_STATS.gather_table_stats(USER, 'LIST_HASH_TAB', granularity=>'ALL');

