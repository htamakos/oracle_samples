INSERT INTO users (id, username) VALUES (1, 'Andy Pandy');
INSERT INTO users (id, username) VALUES (1, 'Burty Basset');
INSERT INTO users (id, username) VALUES (1, 'Harry, Hill');
INSERT INTO users (id, username) VALUES (1, 'Iggy Pop');
INSERT INTO users (id, username) VALUES (1, 'Oliber Hardy');
INSERT INTO users (id, username) VALUES (1, 'Peter Pervis');
INSERT INTO users (id, username) VALUES (1, 'Veruca Salt');
INSERT INTO users (id, username) VALUES (1, 'Wiley Cyote');
COMMIT;

EXEC DBMS_STATS.gather_table_stats(USER, 'USERS');
