--create database webshop;
go
use webshop;

create table proizvodi (
sifra int not null primary key identity (1,1),
naziv varchar(100) not null,
datumnabave datetime, 
cijena decimal (18,2),
aktivan bit
);

create table racuni (
sifra int not null primary key identity (1,1),
datum datetime,
kupac int not null,
statusracuna bit
);

create table kupci (
sifra int not null primary key identity (1,1),
ime varchar (20) not null,
prezime varchar (20) not null,
ulica varchar (50) not null,
mjesto varchar (20) not null,
);

create table stavke (
racun int not null,
proizvod int not null,
kolicina int not null,
cijena decimal (18,2),
);

alter table stavke add foreign key (proizvod) references proizvodi (sifra);
alter table stavke add foreign key (proizvod) references racuni (sifra);
alter table racuni add foreign key (kupac) references kupci (sifra);
