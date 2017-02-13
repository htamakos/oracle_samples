SELECT /*+ GATHER_PLAN_STATISTICS */ *
FROM TABLE(get_tab_ptf(10));

set linesize 200 pagesize 100
SELECT * FROM TABLE(DBMS_XPLAN.display_cursor(format => 'allstats last'));
