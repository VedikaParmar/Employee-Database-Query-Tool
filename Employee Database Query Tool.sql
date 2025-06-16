Create Database Project2;
Use Project2;

Create table Employee(Id int unique, Name Varchar(25),Department varchar(25),Age int, Location varchar(25),Salary int);

Create Table salary(S_No int,Salary int);

Insert into Employee Values (1, "Yakin","Finance",21,"Ratlam",45000),(2, "Nikhil","Bankimg",22,"Ujjain",40000),(3, "Genius","IT",20,"Indore",50000),(4, "Bharat","HR",23,"Banglore",55000),(5, "Pawan","HR",20,"Ratlam",38000);

Select * From Employee;

Insert into salary Values(1, 38000),(2, 50000),(3, 25000),(4,36000),(5,36000);
Select * from salary;

Select Department,Age, Location from Employee;

Select * From Employee inner join salary on Employee.salary = salary.salary;

Create view Department_Employee1 as Select Department from Employee;

SELECT Department, max(salary) AS Max_salary
FROM Employee
GROUP BY Department
HAVING Max(salary) > 50000;

