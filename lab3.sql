create database SUPPLIER1;
use SUPPLIER1;
create table supplier1(sid int,sname varchar(40),address varchar(40),primary key(sid));
create table parts1(pid int,pname varchar(40),color varchar(40),primary key(pid));
create table catalog1(sid int,pid int,cost real, foreign key(sid) references supplier1(sid),foreign key(pid) references parts1(pid));
insert into supplier1 values(123,'ABC','nyc'),
(234,'DEF','london'),
(456,'GHU','texas');

insert into parts1 values(001,'XY','red'),
(002,'YU','pink'),
(003,'LO','black');

insert into catalog1 values(123,001,8900),
(234,002,9000),
(456,003,8070);
select * from catalog1;
select * from parts1;
select * from supplier1;
commit;
insert into catalog1 values(123,3,4000);
select pname from parts1 where pid = ANY(select pid from supplier1);


select sname from supplier where sid = ANY(select sid from catalog group by sid having count(pid) = (select count(pid) from parts) );
select sid,count(pid) from catalog group by sid;

