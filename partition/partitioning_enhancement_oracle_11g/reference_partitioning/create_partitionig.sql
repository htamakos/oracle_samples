CREATE TABLE parent_tab (
  id           NUMBER       NOT NULL,
  code         VARCHAR2(10) NOT NULL,
  description  VARCHAR2(50),
  created_date DATE,
  CONSTRAINT parent_tab_pk PRIMARY KEY (id)
)
PARTITION BY RANGE (created_date)
(
  PARTITION part_2017 VALUES LESS THAN (TO_DATE('01-JAN-2018', 'DD-MON-YYYY')),
  PARTITION part_2018 VALUES LESS THAN (TO_DATE('01-JAN-2019', 'DD-MON-YYYY'))
);

CREATE TABLE child_tab (
  id            NUMBER NOT NULL,
  parent_tab_id NUMBER NOT NULL,
  code          VARCHAR2(10),
  description   VARCHAR2(50),
  created_date  DATE,
  CONSTRAINT child_parent_tab_pk PRIMARY KEY (id),
  CONSTRAINT child_parent_tab_fk FOREIGN KEY (parent_tab_id) REFERENCES parent_tab (id)
) 
PARTITION BY REFERENCE (child_parent_tab_fk);
