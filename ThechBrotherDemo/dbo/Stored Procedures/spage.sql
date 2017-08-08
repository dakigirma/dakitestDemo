CREATE proc spage
@dob date
as 
begin
	declare @age int
	select @age = DATEDIFF(year,@dob,getdate())
	select @age as age
end
