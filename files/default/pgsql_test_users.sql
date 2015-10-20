DROP DATABAE test_users;
CREATE DATABAE test_users;
\c test_users
CREATE TABLE users ( id serial primary key, first_name text, last_name text, age int);