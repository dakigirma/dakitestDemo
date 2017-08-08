CREATE TABLE [dbo].[employee] (
    [EmpId] INT          NOT NULL,
    [Fname] VARCHAR (10) NOT NULL,
    [Lname] VARCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([EmpId] ASC),
    CONSTRAINT [FK_employee_employee] FOREIGN KEY ([EmpId]) REFERENCES [dbo].[employee] ([EmpId])
);

