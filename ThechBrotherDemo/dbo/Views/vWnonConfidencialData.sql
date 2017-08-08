create view vWnonConfidencialData
as
select e.Id,e.Name,e.Gendar,d.DepName
from dbo.tbldepartment d
join dbo.tblemployee e
	on d.DepartmentId = e.DepartmentId