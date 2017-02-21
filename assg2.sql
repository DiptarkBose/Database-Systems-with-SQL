1.
i)

ii)
select name
from employee
where salary>some(select salary
		  from employee natural join department
		  where Dname='Research')

iii)
select count(distinct essn) as total_employees
from project natural join works_on
where Pname='X'

iv)
with dept_strength(emp_count, dept_name) as
(select count(ssn), Dname
 from employee natural join department
 group by Dno)

select Dno, emp_count, dept_name
from employee, dept_strength
where emp_count>5 and salary>40000

2.
i)
create table employee(
	Empno	varchar(20),
	Empname varchar(20) not null,
	Sex	char(1) not null,
	Salary	numeric(7, 2) default 1000,
	Address	varchar(20) not null,
	Dno	numeric(7, 2),
	primary key (Empno),
	check(Sex in ('M', 'F'))
	);
	
