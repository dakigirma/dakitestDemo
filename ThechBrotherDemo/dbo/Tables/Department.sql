CREATE TABLE [dbo].[Department] (
    [DipId]   INT           NOT NULL,
    [EmpId]   INT           NOT NULL,
    [Depname] NVARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([DipId] ASC),
    CONSTRAINT [FK_Department_employee] FOREIGN KEY ([EmpId]) REFERENCES [dbo].[employee] ([EmpId])
);

