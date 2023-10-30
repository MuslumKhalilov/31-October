--Task 1

create database AB104

use AB104

create table Roles (
[Id] int primary key identity,
[Name] VARCHAR(50)
)

create table Users (
[Id] int primary key identity,
[UserName] VARCHAR(50),
[Password] VARCHAR(50),
[RolesId] int references Roles(Id)
)

insert into Roles values
('Admin'),
('Moderator')

 insert into Users values
 ('User1','Password1',1),
 ('User2','Password2',2),
 ('User3','Password3',1),
 ('User4','Password4',2)

 select u.UserName , r.Name  as 'Role' from Users as u
 join Roles as r
 On u.RolesId=r.Id

 --Task 2

 use AB104

 create table Colors(
 [Id] int primary key identity,
 [Name] varchar (50)
 )

 create table Categories(
 [Id] int primary key identity,
 [Name] varchar (50)
 )

 create table Products(
 [Id] int primary key identity,
 [Name] varchar (50),
 [Price] decimal not null,
 [Cost] decimal not null,
 [CategoryId] int references Categories(Id)
 )

 create table ProductsColors(
 [ProductId] int references Products(Id),
 [ColorId] int references Colors(Id)
 )

 select p.Name as [Product Name], c.Name as [Category Name], co.Name as [Color Name]
from Products as p
JOIN Categories as c 
ON p.CategoryID = c.Id
JOIN ProductsColors as pc 
ON p.Id = pc.ProductId
JOIN Colors as co 
ON pc.ColorId = co.Id
 



 



