CREATE procedure sp_try_parse
@x nvarchar(max) 
as
begin
	select IIF(TRY_PARSE(@x as int) is not null,'True','false')
end
