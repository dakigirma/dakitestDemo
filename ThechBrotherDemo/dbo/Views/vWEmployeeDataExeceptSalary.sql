create view vWEmployeeDataExeceptSalary
as
select e.Id,e.Name,e.Gendar,e.DepartmentId 
from dbo.tblemployee e
