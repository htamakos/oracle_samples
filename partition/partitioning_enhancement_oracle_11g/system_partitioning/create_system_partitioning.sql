CREATE TABLE system_partitioned_tab (
  id           NUMBER,
  code         VARCHAR2(10),
  description  VARCHAR2(50),
  created_date DATE
)
PARTITION BY SYSTEM
(
  PARTITION sort_1,
  PARTITION sort_2
);

