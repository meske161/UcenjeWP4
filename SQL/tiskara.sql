use master;
go
drop database if exists tiskara
go
create database tiskara
go

use tiskara
create table strojevi (
sifra int not null primary key identity (1,1),
proizvodnja varchar (30) not null,
dorada varchar (30) not null, 
radionica varchar (30) not null, 
tisak varchar (30) not null, 
maloprodaja varchar (30) not null
);