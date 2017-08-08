CREATE TABLE [dbo].[tbl_Students] (
    [Studentid] INT            NOT NULL,
    [Firstname] NVARCHAR (200) NOT NULL,
    [Lastname]  NVARCHAR (200) NULL,
    [Gendar]    NVARCHAR (10)  NULL,
    [Email]     NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Studentid] ASC)
);

