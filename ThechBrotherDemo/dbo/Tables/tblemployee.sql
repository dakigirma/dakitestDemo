CREATE TABLE [dbo].[tblemployee] (
    [Id]           INT           NOT NULL,
    [Name]         NVARCHAR (20) NULL,
    [Sallery]      INT           NULL,
    [Gendar]       NVARCHAR (10) NULL,
    [DepartmentId] INT           NULL,
    CONSTRAINT [PK__tblemplo__3214EC07217A22D7] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_tblemployee_tblemployee] FOREIGN KEY ([DepartmentId]) REFERENCES [dbo].[tbldepartment] ([DepartmentId])
);


GO
 CREATE TRIGGER tr_select_tblemployee
 ON [tblemployee]
 for insert
 as
 begin
	select * from [dbo].[tblemployee]
 end

GO
DISABLE TRIGGER [dbo].[tr_select_tblemployee]
    ON [dbo].[tblemployee];


GO
CREATE trigger tr_tblemployee_ForInsert
on dbo.tblemployee
for insert
as
begin
		declare @id int
		select @id = Id from inserted

		insert into tblemployeeAudit
		values ( cast(@id as varchar) ,'new customer with Id = ' 
		+ cast(@id as varchar) + ' added on  ' + cast(GETDATE() as varchar))
end

GO
DISABLE TRIGGER [dbo].[tr_tblemployee_ForInsert]
    ON [dbo].[tblemployee];

