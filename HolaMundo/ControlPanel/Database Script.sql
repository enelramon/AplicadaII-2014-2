Create Database StudentManagementDB
go

 use StudentManagementDB
 go
 Create Table CivilStates(IdCivilState int primary key identity(1,1),StateName varchar(40)  not null,isActive bit)
 
create table Peoples(IdPerson int primary key identity(1,1),Name Varchar(40) not null,LastName  Varchar(40) not null,
 Adress Varchar(100), Gender tinyint, BornDate date,IdCivilState int,Email varchar(100), Phone varchar(12))

Create table Students(IdStudent int primary key identity(1,1),IdPerson int not null,StudentCode varchar(9)) 

Create table Assistance(IdAssistance int primary key identity(1,1),AssistanceDate date not null,IdStudent int not null,Assisted bit not null)

go

insert into CivilStates(StateName,isActive ) values('Married','true')