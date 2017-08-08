create function fn_sinceEndSale(@year date)
returns int
as
begin
	declare @noyear int
	select @noyear = DATEDIFF(YEAR,@year,GETDATE())
	return @noyear
end