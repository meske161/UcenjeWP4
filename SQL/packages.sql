create database packages
go
use packages;

create table Persons (
ID int not null primary key identity (1,1),
LastName varchar (20) not null, 
FirstName varchar (20) not null, 
Age int not null
);

create table Orders (
OrderID int not null primary key identity (1,1), 
OrderNumber int not null,
PersonID int

);

alter table Orders add foreign key (PersonID) references Persons;