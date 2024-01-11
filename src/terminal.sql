Server [localhost]:
Database [postgres]: sql
Port [5432]:
Username [postgres]:
Password for user postgres:
psql (16.1)
WARNING: Console code page (866) differs from Windows code page (1251)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

sql=# create table students(id serial primary key, name varchar(64) not null, age int not null);
CREATE TABLE
    sql=# insert into students(name, age);
ERROR:  syntax error at or near ";"
LINE 1: insert into students(name, age);
^
sql=# insert into students(name, age) values('nur',23);
INSERT 0 1
sql=# create table actors(id serial primary key, name varchar not null, age int not null);
CREATE TABLE
    sql=# create table persons (id serial primary key, first_name varchar(200) not null, last_name varchar(200) not null, age int not null, gender varchar(15) not null);
CREATE TABLE
    sql=# inserts into persons(first_name, last_name, age, gender) values ('Nurlan', 'Abibbillaev', 18, 'male');
ERROR:  syntax error at or near "inserts"
LINE 1: inserts into persons(first_name, last_name, age, gender) val...
        ^
sql=# insert into persons(first_name, last_name, age, gender) values ('Nurlan', 'Abibbillaev', 18, 'male');
INSERT 0 1
sql=# create table doctors(id serial primary key, full_name varchar not null, experiens int not null);
CREATE TABLE
    sql=# insert into doctors(full_name, experiens) values ('doctor aibolit', 100);
INSERT 0 1
sql=# create table weapon(id serial primary key, type varchar(100) not null);
CREATE TABLE
    sql=# insert into weapon(type) values ('ak-47');
INSERT 0 1
sql=# create table police(id serial primary key, name varchar, weapon_id int references weapon(id));
CREATE TABLE
    sql=# insert into police(name, weapon_id) values ('John', 1);
INSERT 0 1
sql=# create table devops(id serial primary key, name varchar, post varchar not null);
CREATE TABLE
    sql=# insert into devops(name, post) values ('Nurkamil', 'middle');
INSERT 0 1
sql=# create table laptops(id serial primary key, brand varchar, color varchar not null, devops_id int references devops(id));
CREATE TABLE
    sql=# insert into laptops(brand, color, devops_id) values('macbook', 'black', 1);
INSERT 0 1
sql=# create table instructors(id serial primary key, last_name varchar(64) not null, first_name varchar(64) not null, age int not null, gender varchar(15) not null);
CREATE TABLE
    sql=# insert into instructors(last_name, first_name, age, gender) values ('Toichubai uulu', 'Mukhammed', 26, 'male');
INSERT 0 1
sql=# create table genders(id serial primary key, gen varchar(55) not null);
CREATE TABLE
    sql=# insert into genders(gen) values('male');
INSERT 0 1
sql=# insert into genders(gen) values('female');
INSERT 0 1
sql=#