-- Tao bang --
create database if not exists demo1;

-- tao bang quan li sinh vien --
create table Class(
id int primary key,
`name` varchar(100) 
);

-- THEM LOP --
insert into Class(id,name) values (1,"Toan"),(2,"Ly"),(3,"Hoa");

-- THEM GIANG VIEN --

insert into Teacher(id,name,age,country) values (1,"A",30,"Da Nang"),(2,"B",42,"Ha Hoi"),(3,"C",34,"Sai Gon");

-- tao bang giao vien --
create table Teacher(
id int primary key,
`name` varchar(100),
`age` int,
`country` varchar(100)
);





