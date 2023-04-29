use joins;
select * from Student_table;
select * from Marks_table;
select * from NCC_NSS_Table;
select * from SPORTS_TABLE;

--Inner join
select * from Student_table as ST 
inner join Marks_table as MT on
ST.id=MT.id

select * from Student_table as ST
inner join SPORTS_TABLE as SPT on
ST.id=SPT.id;

--left jion
select * from Student_table as ST
left join Marks_table as MT on
ST.id=MT.id;

select * from Marks_table as MT
left join NCC_NSS_Table as NNT on 
MT.id=NNT.id;

--right join
select * from SPORTS_TABLE as ST
right join NCC_NSS_Table as NNT
on ST.ID=NNT.ID;

select * from Student_table as ST
right join Marks_table as MT on
ST.ID=MT.ID;

--full join
select * from Student_table as ST
right join Marks_table as MT on
ST.ID=MT.ID;

select * from Student_table as ST
right join SPORTS_TABLE as SPT on
ST.ID=SPT.ID;

--order by
use practice;
select * from Employee_monthly_salary;
select EmpID,Gender,Age,GROSS from Employee_monthly_salary order by Age;
select EmpID,Gender,Age,GROSS from Employee_monthly_salary order by GROSS;
select EmpID,Gender,Age,GROSS,Net_Pay,Deduction from Employee_monthly_salary order by Deduction;
select EmpID,Gender,Age,GROSS,Net_Pay,Deduction from Employee_monthly_salary order by Net_Pay;
select  EmpID,Gender,Age,GROSS,Net_Pay,Deduction from Employee_monthly_salary order by GROSS DESC;
select  EmpID,Gender,Age,GROSS,Net_Pay,Deduction from Employee_monthly_salary order by GROSS ASC;
select EmpID,Gender,Gross from Employee_monthly_salary order by GROSS desc;

--aggregate functions
select distinct(Gender) from Employee_monthly_salary;
select count(distinct(Gender)) from Employee_monthly_salary;
select count(Gender) from Employee_monthly_salary;
select count(GROSS) from Employee_monthly_salary;
select sum(GROSS) as total from Employee_monthly_salary;
select max(GROSS) as maximum_salary from Employee_monthly_salary;
select min(GROSS) as minimum_salary from Employee_monthly_salary;
select avg(GROSS) as Average_salary from Employee_monthly_salary;


--Group by
select * from Employee_monthly_salary;
select Age from Employee_monthly_salary Group by Age;
select GROSS from Employee_monthly_salary group by GROSS;
select distinct(Age) from Employee_monthly_salary;

--Having
select * from Employee_monthly_salary;



--like
use joins;
select * from Student_table;
select Student_Name from Student_table where Student_Name like '%a';   --last
select Student_Name from Student_table where Student_Name like 'k%';   --first
select Student_Name from Student_table where Student_Name like '%k%';  --center


--union and intersect
select * from Student_table;
select * from SPORTS_TABLE;
select Student_Name from Student_table
select Sports from SPORTS_TABLE where sports='cricket';
select * from Student_table intersect select * from SPORTS_TABLE where Sports='cricket';