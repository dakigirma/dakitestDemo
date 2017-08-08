CREATE TABLE [dbo].[tblMailingAddress] (
    [AddressId]      INT           NOT NULL,
    [EmployeeNumber] INT           NULL,
    [HouseNumber]    NVARCHAR (10) NULL,
    [StreetAddress]  NVARCHAR (10) NULL,
    [City]           NVARCHAR (15) NULL,
    [PostalCode]     NVARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([AddressId] ASC)
);

