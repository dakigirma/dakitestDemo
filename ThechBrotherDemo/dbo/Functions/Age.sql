create function Age(@dob date)
returns int
as 
begin
	declare @age int
	select @age = DATEDIFF(year,@dob,getdate())
	return @age
end