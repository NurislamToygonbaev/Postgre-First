create table asia(id serial primary key, name varchar(100) not null, currency varchar(50) not null);
insert into asia(name, currency) values ('Kyrgyzstan', 'som');
create table euro(id serial primary key, name varchar(100) not null, currency varchar(50) not null);
insert into euro(name, currency) values ('Germany', 'euro');
create table usa(id serial primary key, name varchar(100) not null, currency varchar(50) not null);
insert into usa(name, currency) values ('usa', 'dollars');
create table africa(id serial primary key, name varchar(100) not null, currency varchar(50) not null);
insert into africa(name, currency) values ('keniya', 'funt');
create table central_asia(id serial primary key, name varchar(100) not null, currency varchar(50) not null);
insert into central_asia(name, currency) values ('kazakhstan', 'tenge');
create table colors(id serial primary key, color varchar(100) not null);
insert into colors(color) values ('green');
create table models(id serial primary key, title varchar(100) not null);
insert into models(title) values ('redmi');
create table made(id serial primary key, make int not null);
insert into made(make) values (2019);
create table country(id serial primary key, count varchar not null);
insert into country(count) values ('china');
create table phones(id serial primary key, models_id int references models(id), colors_id int references colors(id), country_id int references country(id));
insert into phones(models_id, colors_id, country_id) values (1, 1, 1);