show databases;
create database a325;
show databases;

use a325; 
create table student_info(
roll_no tinyint,
attendance bit,
pocket_money smallint);
show tables ; # for showing the tables inside the selected database
/*for showing
the tables inside 
the selected database
*/
#describe student_info; # gives metadata or schema i.e data  about data
desc student_info;
insert into student_info values(1,1,1000);
select * from student_info;
insert into student_info values (255,2,32767),
(256,2,32768),
(746898,8798376,698809);
select * from student_info;

create table product_d(
id int , pho_nu bigint , price decimal (5,2));
desc product_d;
create table fp_datatype(
id float , re real );
desc fp_datatype;
insert into fp_datatype values(93788972509.746786798536,47684568376873687.85376873598);
select *from fp_datatype;

use a325;
create table employee_details (
id int, salary int , work_hours decimal (2,1));
insert into employee_details values
(1,20000,2.9),
(2,60000,4.6),
(3,50000,7.8),
(4,30000,3.2);
select *from employee_details;

create table dt(dt date , ti time , dt_ti datetime);
insert into dt values('2025-04-16','09:48:48',"2025-04-16 09:48:48");
# yyyy-mm-dd
select *from dt;

create table student_c(
sname char(10), svname varchar(10));
desc student_c;
insert into student_c values 
("ABC","DEF");
select *from student_c;

create table student_demo (
roll int , subject varchar(20), address varchar(20),marks int);
desc student_demo;
insert into student_demo values
(1,"Python","Pune",56),
(2,"Java","Mumbai",95),
(3,"HTML","Nashik",85),
(4,"C,","Pune",56),
(5,"Python","Nashik",50),
(6,"DJango","Andheri",99),
(7,"Javascript","Bangalore",85),
(8,Null,"Pune",Null);
select * from student_demo;
insert into student_demo(roll,addr) values(9,"Delhi"),(10,"Mumbai");
select * from student_demo;
insert into student_demo values
(11,"Django","Andheri",78),
(12,"Javascript","Bangalore",45),
(13,"Python","Andheri",16),
(14,"Python","Pune",96);
select * from student_demo;
select roll,address from student_info;
select * from student_demo where roll=5;
select subject,marks from student_demo where roll=7;
select roll,marks from student_demo  where marks<90;

use a325;
select roll, marks from student_demo where marks>=50 and marks<=90;
select roll,marks from student_demo where marks between 50 and 90;
select roll,marks from student_demo where marks<=90 and marks>=50;
select roll,marks from student_demo where marks between 90 and 50;
# between works only in ascending order range

# case
select roll,
case when marks>=75 and marks<=100 then "very good"
when marks >=60 and marks<75 then "good"
when marks>=35 and marks<60 then "ok"
else "fail"
end Result # aliasing
from student_demo; 

use a325;
select *from student_demo where roll=1 or roll=2;
select *from student_demo where roll in (1,2);

select *from student_demo where roll not in (1,2);
select *from student_demo where roll <> 1 and roll <> 2;

select address from student_demo;
select distinct address from student_demo;

select address from student_demo
where address like "%i";
# percentage % is any numbers,characters

select address from student_demo
where address like "_u__";
# _ underscore is for only one character

select address from student_demo
where address like "_u%";

select address from student_demo
where address like "M%";

select address from student_demo
where address like "____i";

select roll,marks from student_demo
order by marks desc limit 3;

select roll,marks from student_demo
where marks is null;

select roll,marks from student_demo
where marks is not null
order by marks limit 1;
# limit to find top most or least

select roll,marks from student_demo
order by marks desc limit 3;
select roll,marks from student_demo
order by marks desc limit 1,2;

# constraints----------------------------------------------
/*
jhhf
hfjg
*/
                                                                                                                                                                                                 
