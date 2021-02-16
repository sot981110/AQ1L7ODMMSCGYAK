create database dbmsc;
use dbmsc;

create table gyarto(adoszam int primary key, nev varchar(30), telephely varchar(200));
create table termek(tkod int primary key, nev varchar(50), gyarto int references gyarto);

select * from gyarto;
select * from termek;

drop table gyarto;
drop table termek;

drop database dbmsc;