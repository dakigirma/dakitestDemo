create view vWSummerizedDataByDepartment
as
select d.DepName, COUNT(e.Id) as NumberOfEmployee
from dbo.tbldepartment d
join dbo.tblemployee e
	on d.DepartmentId = e.DepartmentId
group by d.DepName
