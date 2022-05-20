select * from employee;
select * from dependent;
select * from departments;
select * from project;
select * from works_for;

-- Display all the employees Data.
select * from employee;

-- Display the employee First name, last name, Salary and Department number. 
select Fname, Lname, Salary , DNO from employee;

-- Display all the projects names, locations and the department which is responsible about it.
select Pname, Plocation , Dnum from project;

-- Display each employee full name and his annual commission in an ANNUAL COMM column (alias).
select CONCAT(Fname,' ',Lname) as full_name, (12* salary*0.1) as ANNUAL_COMM  from employee;

-- Display the employees Id, name who earns more than 1000 LE monthly.
select SSN, CONCAT(Fname,' ',Lname) as Namee  from employee 
where salary > 1000 ;

-- Display the employees Id, name who earns more than 10000 LE annually.
select SSN, CONCAT(Fname,' ',Lname) as Namee  from employee 
where (salary *12) >10000 ;

-- Display the names and salaries of the female employees 
select CONCAT(Fname,' ',Lname) as Namee ,salary from employee
where Gender = 'F' ;

-- Display each department id, name which managed by a manager with id equals 968574.
select  Dnum, Dname from departments 
where MGRSSN = '968574' ;

-- Dispaly the ids, names and locations of  the pojects which controled with department 10.
select Pnumber , Pname , Plocation from project
where Dnum = '10' ;

-- DML . -----------------------------------------------------------------------
-- Insert your personal data to the employee table as a new employee in department number 30, SSN = 102672, Superssn = 112233.
insert into  employee 
VALUES ('23232','Ammar','Yasser','1999-9-9','mansoura','M','10000','112233','30');

-- Insert another employee with personal data your friend as new employee in department number 30 , SSN = 102660,
-- but don’t enter any value for salary or manager number to him.
insert into  employee 
 (SSN,Fname,Lname,Bdate,Address,Gender,Salary,DNO)
values ('102660','Amr','Mostafa','1999-9-9','mansoura','M','11010','30');

-- In the department table insert new department called "DEPT IT" , with id 100, 
-- employee with SSN = 112233 as a manager for this department. The start date for this manager is '1-11-2006'
insert into departments
 (Dname,Dnum,MGRSSN,MGRSatrtDate)
 values ('DEPT_IT','100','112233','2006-11-1'); 
 
-- Do what is required if you know that
-- Mrs.Noha Mohamed moved to be the manager of the new department (id = 100), and they give you her position 
-- a.	First try to update her record in your database.
update departments set MGRSSN = '968574' where  Dnum = '100';
-- b.	Update your record to be department 20 manager .
update departments set MGRSSN = '23232' where  Dnum = '20';
-- c.	Update your friend data to be in your teamwork (supervised by you)
update employee set SuperSSN = '112233' where  SSN = '102660';

--  Unfortunately the company ended the contract with Mr.Kamel Mohamed so try to delete his data from your database,
--  in case you know that you will be temporary in his position.

update employee set SuperSSN = '23232' where SuperSSN= '223344' ;
update departments set MGRSSN = '23232' where  MGRSSN ='223344';
delete from employee where SSN = '223344' ;
delete from dependent where ESSN = '223344' ;
delete from works_for where ESSN = '223344' ;


--  And your salary has been upgraded by 20 present of its last value.
update employee set Salary = (Salary*0.2 + Salary) where SSN = '23232';


-- -----------------------------------------------------------------------------------------------------------
