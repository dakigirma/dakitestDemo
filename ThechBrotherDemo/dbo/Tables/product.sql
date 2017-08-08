CREATE TABLE [dbo].[product] (
    [productid]   INT           NOT NULL,
    [name]        NVARCHAR (20) NULL,
    [price]       FLOAT (53)    NULL,
    [quntity]     INT           NULL,
    [totalamount] AS            ([price]*[quntity]) PERSISTED
);

