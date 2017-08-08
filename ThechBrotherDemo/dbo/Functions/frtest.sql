create function frtest(@departmentid int)
returns table
as
return
(
		select * from tblemployee 
		where DepartmentId = @departmentid

)

