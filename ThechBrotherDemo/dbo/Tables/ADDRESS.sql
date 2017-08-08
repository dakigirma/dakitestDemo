CREATE TABLE [dbo].[ADDRESS] (
    [AddressID] INT           NOT NULL,
    [kebele]    VARCHAR (20)  NULL,
    [EmpId]     INT           NULL,
    [City]      VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([AddressID] ASC)
);

