create database dbmsc;
use dbmsc;

create table gyarto(adoszam int primary key, nev varchar(30), telephely varchar(200), irsz char(4), varos char(40), utca varchar(100));
create table termek(tkod int primary key, nev char(50), ear int check(ear > 0), gyarto int references gyarto);
create table egysegek(aru int references termek, db int check(db > 0));
create table alkatresz(akod int primary key, nev varchar(50));
create table komponens(termek int references termek, alkatresz int references alkatresz);

SELECT * FROM gyarto;
SELECT * FROM termek;
SELECT * FROM egysegek;
SELECT * FROM alkatresz;
SELECT * FROM komponens;

DROP TABLE gyarto;
DROP TABLE termek;
DROP TABLE egysegek;
DROP TABLE alkatresz;
DROP TABLE komponens;

DROP DATABASE dbmsc;