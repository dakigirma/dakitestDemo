create view [dbo].[vWEmployeeByDepartment]
as 
select e.Id,e.Name,e.Sallery,e.Gendar,d.DepName
from dbo.tbldepartment d
join dbo.tblemployee e
	on d.DepartmentId = e.DepartmentId
GO

CREATE trigger [dbo].[tr_vWEmployeeByDepartment_InsteadOfInsert]
on [dbo].[vWEmployeeByDepartment]
instead of insert 
as
begin
	declare @depid int 
	select @depid = dep.DepartmentId 
	from tbldepartment dep
	join inserted ins
	on ins.DepName = dep.DepName

	if (@depid is null)
	begin
		raiserror('error',16,1)
		return
	end 

	insert into tblemployee (Id,Name,Sallery,Gendar,DepartmentId)
	select Id,Name,Sallery,Gendar,@depid from inserted
	
end