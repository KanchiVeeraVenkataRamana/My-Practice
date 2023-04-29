use PRACTICE
select *from Employee_monthly_salary;
select  EmpID,Name,Age,Gross from Employee_monthly_salary where Age=24;
select  EmpID,Name,Age,Gross from Employee_monthly_salary where GROSS=102652;
select  EmpID,Name,Age,Gross from Employee_monthly_salary where GROSS>102652;
select  EmpID,Name,Age,Gross from Employee_monthly_salary where GROSS<102652;
select  EmpID,Name,Age,Gross from Employee_monthly_salary where GROSS=256;
select * from Employee_monthly_salary where Name=null;


-- aggregate functions
select count(*) from Employee_monthly_salary;
select sum(EmpID) from Employee_monthly_salary;
select sum(GROSS) from Employee_monthly_salary;
select avg(GROSS) from Employee_monthly_salary;
select max(GROSS) from Employee_monthly_salary;
select min(GROSS) from Employee_monthly_salary;

select distinct(GROSS) from Employee_monthly_salary;
select count(distinct(GROSS)) from Employee_monthly_salary;
select count(distinct(GROSS)) as Gross_count from Employee_monthly_salary;
select EmpID as E_ID,GROSS as salary,Age as old from Employee_monthly_salary;
select EmpID,Age from Employee_monthly_salary;
select * from Employee_monthly_salary where EmpID=19575 and Age=25;
select * from Employee_monthly_salary where EmpID=19575 or Age=25;
select * from Employee_monthly_salary where Age between 25 and 27;
select  EmpID,Age from Employee_monthly_salary where EmpID=19575 and Age=25;
select  EmpID,Age from Employee_monthly_salary where EmpID=19575 or Age=25;
