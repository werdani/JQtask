select * from employee;
select * from dependent;
select * from departments;
select * from project;
select * from works_for;

-- new task 
-- 1
select Dname ,Dnum,MGRSSN,concat(Fname,' ',Lname) as Namee 
from employee
inner join departments
on SSN=MGRSSN;

-- 2
select Dname , Pname from project as pro
inner join departments as dep
on dep.dnum=pro.dnum;

-- 3
select fname,dependent_name,sex,dependent.bdate from employee
inner join dependent
on SSN=ESSN;

-- 4
-- a.The name and the gender of the dependence that's gender is Female and depending on Female Employee.
select * from dependent;

-- b.And the male dependence that depends on Male Employee.
select dependent_name ,sex from employee
inner join dependent
on ssn= essn
where gender = 'f' and sex = 'f'
union all 
select dependent_name ,sex from employee
inner join dependent
on ssn= essn
where gender = 'm' and sex = 'm';

-- 5
select ssn,fname,lname,bdate,address,gender,salary,superssn,dno from employee
join departments on ssn=mgrssn;

-- 6
select pnumber ,pname ,plocation,city
from project 
where city in ('cairo','alex');
-- 7
select * from project where pname like 'a%' ;

-- 8
select concat(Fname,' ',Lname) as Namee ,dname ,salary
from employee
inner join departments
on dno=dnum
where dno = 30 and salary between 1000 and 2000;

-- 9
select concat(Fname,' ',Lname) as Namee ,dname,hours,pname 
from employee as emp,departments as dep,works_for as workk ,project as pro 
where emp.dno = dep.dnum and emp.ssn = workk.essn and workk.pno = pro.pnumber and emp.dno = 10 and pname =  'AL Rabwah' and hours >=10;

-- 10
select fname from employee 
where superssn =(
               select ssn from employee
               where fname ='kamel');

-- 11
select pname ,sum(hours) from works_for 
join project on pno = pnumber
group by pname ;

-- 12
select concat(Fname,' ',Lname) as Namee ,pname from employee as emp,works_for as workk ,project as pro 
where emp.ssn = workk.essn and workk.pno = pro.pnumber order by pname;

-- 13
select dname ,dnum,mgrssn,mgrsatrtdate from departments join employee
on dno = dnum where ssn= (select min(ssn) from employee);

-- 14
select dname ,min(Salary), max(Salary),avg(Salary) from departments join employee 
on dno = dnum 
group by Dname;


-- 15
select lname from employee inner join departments on ssn = mgrssn 
where ssn not in (select essn from dependent);

-- 16
select dnum,dname ,count(ssn) ,avg(salary) from departments join employee on dnum = dno 
having avg (Salary) <(select avg (Salary) from employee);

-- 17
select fname , lname as 'Namee' ,pname ,dname 
from employee as emp, works_for as workk ,project as pro ,departments as dep 
where emp.dno = dep.dnum and emp.ssn = workk.essn and workk.pno = pro.pnumber 
order by dname ,lname ,fname ;
-- 18
select pnumber ,dname ,lname ,address ,bdate 
from employee as emp;

-- 19

-- 20
select ssn ,fname ,lname from employee 
where not exists (select * from dependent 
					where employee.ssn = dependent.essn);

