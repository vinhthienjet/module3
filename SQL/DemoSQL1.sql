-- Tao csdl--
create database if not exists demo1;
-- tao bang student--
create table students(
 id int primary key,
 `name` varchar(100),
 `point` float
);

-- them du lieu vao bang --
insert into students(id,name,point) values(1,"Thien",9),(2,"tuan",5),(3,"Duyen",10);
-- doc du lieu --
-- select * la lay tat ca --
select * from students  ;

-- update du lieu --
update students set name='Thien' where id = 1;
-- xoa --
delete from students where id =2;
-- drop table--
drop table students;

