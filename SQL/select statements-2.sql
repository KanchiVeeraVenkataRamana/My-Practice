use joins;
select * from sports_table;
select  distinct(Sports) from sports_table;
select Count(distinct(Sports)) from sports_table;
select count(distinct(Sports)) as no_of_games from sports_table;
select ID as Student_id,Sports as games from sports_table;
select * from student_table;
select * from student_table where Student_Name in ('Chandu','K.Chinni','Swapna');
select * from student_table where Student_Name not in ('Raghava','Bharthi');
select * from marks_table;
select * from marks_table where Marks between 85 and 90;
select * from marks_table where Ranks between 8 and 14;
select * from marks_table where Marks=92 and Ranks=13;
select * from marks_table where Marks=92 or Ranks=13;
select * from marks_table where not Marks=92;
create database first;
use first;
drop database first;