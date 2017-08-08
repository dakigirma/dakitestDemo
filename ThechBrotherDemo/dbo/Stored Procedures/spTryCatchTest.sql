CREATE proc spTryCatchTest
@empid int,
@fname varchar(20),
@lname varchar(20)
as
begin try
	insert into dbo.employee values (@empid,@fname,@lname)
end try
begin catch
	select ERROR_NUMBER() as ErrorNumber
			,ERROR_MESSAGE() as ErrorMassage
			,ERROR_PROCEDURE() as ErrorProcedure
			,ERROR_STATE()  as ErrorState
			,ERROR_SEVERITY() as ErrorSeverity
			,ERROR_LINE() as ErrorLine
end catch