drop database if exists gamedb;
create database gamedb;

use gamedb;

create table game(
    number integer not null primary key,
    name varchar(45) not null,
    genre varchar(14) not null,
    rating varchar(5) not null,
    quantity integer not null

);

insert into game values(1,'Star Citizen','Simulator', '*****', 3);
insert into game values(2,'Witcher 3','RPG', '*****', 5);

create user if not exists 'daniel'@'localhost';
set password for 'daniel'@'localhost' = password('123');
-- change the password to qY1IzmJD later
-- source /Users/s2400775/Desktop/BCH/ilkka/Shub_Nikita_game_project/Shub_Nikita_game_createStatements.sql

grant all privileges on gamedb.* to 'daniel'@'localhost';