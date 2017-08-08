create function CalculateAge(@DOB date)
returns int
as 
begin
declare @age int

	set @age = DATEDIFF(year,@DOB,GETDATE()) -
		case
			when (Month(@DOB) > month(getdate()) ) or
				(Month(@DOB) = month(getdate()) )  and (day(@DOB) > day(getdate()))
			then 1
			else 0
		end
return @age 
end