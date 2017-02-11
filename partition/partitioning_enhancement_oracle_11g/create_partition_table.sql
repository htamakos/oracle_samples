CREATE TABLE list_hash_tab (
  id           NUMBER,
  code         VARCHAR2(10),
  description  VARCHAR2(50),
  created_date DATE
)
PARTITION BY LIST (code)
SUBPARTITION BY HASH (id)
(
  PARTITION part_aa VALUES ('AA')
  (
    SUBPARTITION part_aa_01,
    SUBPARTITION part_aa_02
  ),
  PARTITION part_bb VALUES ('BB')
  (
    SUBPARTITION part_bb_01,
    SUBPARTITION part_bb_02
  )
);
