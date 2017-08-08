
create function fn_studentbyid(@id int)
returns nvarchar(20)
with schemabinding 
as 
begin
	return	( select Firstname from dbo.tbl_Students where Studentid = @id  )
end
