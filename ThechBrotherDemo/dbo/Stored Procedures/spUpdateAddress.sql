CREATE procedure spUpdateAddress
as 
begin
	begin try
		begin transaction
			update dbo.tblPhysiclAddress set city = 'Ethio' 
			where addressid = 1

			update tblMailingAddress set city = 'India'
			where addressid = 1
		commit transaction 
		print 'succesfull'
	end try
	begin catch
		rollback transaction
		print 'un succesfull'
		
	end catch
end