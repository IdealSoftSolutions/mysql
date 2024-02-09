use employee;
#Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
select emp_fname as WORKER_NAME from Employee_table;
#Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case.
select upper(emp_fname) from Employee_table;
#Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
select distinct(emp_job) from Employement_table;
#Write an SQL query to print the first three characters of  FIRST_NAME from the Worker table.
select substring(emp_fname,1,3) from Employee_table;
