create database bank1;
use bank1;
create table branch1(
branch_name varchar(100) primary key,
branch_city varchar(100),
assets real
);

create table accounts(
acc_no int primary key,
branch_name varchar(100),
balance real,
foreign key (branch_name) references branch1(branch_name)
);
create table customer(
customer_name varchar(100) primary key,
customer_street varchar(100),
customer_city varchar(100)

);
create table depositor(
customer_name varchar(100) primary key,
acc_no int,
foreign key(customer_name)references customer(customer_name),
foreign key(acc_no)references accounts(acc_no)
);
create table loan(
loan_number int primary key,
branch_name varchar(100),
amount real,
foreign key (branch_name) references branch1(branch_name)
);
insert into branch1(branch_name,branch_city ,assets) values
("abc" ,"delhi",4),
("def" ,"bangalore",5),
("ghi","kanpur",3);
insert into accounts(acc_no,branch_name,balance) values
(100 ,"def",200000),
(101,"abc",70000),
(102,"ghi",50000);
insert into depositor(customer_name,acc_no)values
("xyz",100),
("pqr",101),
("rst",103),
("uvw",104),
("xyz",105),
("pqr",106);
insert into loan(loan_number,branch_name,amount)values
(500,"abc",5000),
(501,"ghi",40000),
(502,"def",60000);
insert into accounts(acc_no,branch_name,balance) values
(103,"abc",400000),
(104,"def",60000);
insert into branch1(branch_name,branch_city ,assets)values
("klm","delhi",8),
("mno","bangalore",2);



