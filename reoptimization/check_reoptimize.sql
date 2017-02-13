col sql_text for a50
col is_reoptimizable for a16

select sql_text, is_reoptimizable
FROM v$sql
where sql_text like '%get_tab_ptf%'
and   sql_text not like '%v$sql%';

