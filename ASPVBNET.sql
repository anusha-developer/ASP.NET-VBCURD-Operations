Create database ASPVBNET
create table Asp_TblEmployee(
EmpId int Identity(1,1) primary key,
EmpName varchar(100),
EmpGender varchar(50),
EmpMobileNo bigint,
EmpEmailId varchar(100),
EmpAddress varchar(100));
select * from Asp_TblEmployee;
 insert into Asp_TblEmployee values('Sanvi','Female',9827177110,'Sanvi@gmail.com','Karimnagar');