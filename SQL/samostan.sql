use master;
go
drop database if exists samostan;
go
create database samostan; 
go

use samostan;

create table svecenici (
sifra int not null primary key identity (1,1),
ime varchar (20) not null, 
prezime varchar (20) not null, 
nadredjeni int null
);

alter table svecenici add foreign key (nadredjeni) references svecenici (sifra);