create view vWITEmployee
as
select e.Id,e.Name,e.Gendar,e.Sallery,d.DepName
from dbo.tbldepartment d
join dbo.tblemployee e
	on d.DepartmentId = e.DepartmentId
where d.DepName like 'IT'