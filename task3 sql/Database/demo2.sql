select *
from employee;

select ssn,fname,lname,salary
from employee;

select ssn as 'Emp ID',fname,lname
from employee;

select ssn as 'Emp ID',concat(fname,' ',lname) as 'Full Name'
from employee;

select ssn as 'Emp ID',concat(fname,' ',lname) as 'Full Name',salary
from employee
where salary>1000;


select *
from employee
where ssn=112233;

select ssn,fname,lname,salary,dno
from employee
where salary >1000
and dno=10;

select ssn,fname,lname,salary,dno
from employee
where salary >1000
or dno=10;

select *
from employee
where salary between 1000 and 2000;

select *
from employee
where dno=10
or dno=20;

select * 
from employee
where dno not in(10,20);

select fname,lname
from employee
where fname like 'a%';

select fname,lname
from employee
where fname like '%a';

select fname,lname
from employee
where fname like '%a%';

select fname,lname
from employee
where fname like '__a%';



select *
from employee
where salary <>1000
order by fname desc;


-- +*/-
select fname,lname,salary,salary*12 as 'Annual Salary'
from employee;

select fname,lname,salary,salary*12 as 'Annual Salary',(0.1*salary*12) as'Bonus'
from employee;