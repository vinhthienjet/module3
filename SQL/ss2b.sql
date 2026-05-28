-- tao DB --
create database if not exists ss2b;
USE ss2b;

create table customers(
cID int primary key auto_increment,
cName varchar(50),
cAge int

);

create table oders(
oID int primary key auto_increment,
cID int ,
oDate date,
oTotalPrice double,

FOREIGN KEY (cID) references customers(cID)

);

create table products(
pID int primary key auto_increment,
pName varchar(100),
pPrice double
);

create table order_detail(
oID int,
pID int,
odQTY varchar(100),

primary key(oID,pID),

FOREIGN KEY (oID) references oders(oID),
FOREIGN KEY (pID) references products(pID)
);