DROP DATABASE IF EXISTS test_users;
CREATE DATABASE test_users;
\c test_users
CREATE TABLE users ( id serial primary key, first_name text, last_name text, age int);