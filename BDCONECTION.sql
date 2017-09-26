create database CONECTION;
use CONECTION;

create table idconection(
      id INT,
      name VARCHAR(45)
);

create table login(
     usuario varchar(10),
     pasword varchar(10)
);

create table producto(
      id INT PRIMARY KEY,
      nombre varchar(40),
      cantidad int,
      presentacion varchar(40),
      precio double
);