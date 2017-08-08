CREATE TABLE [dbo].[MyTempTable] (
    [SalesYear]  SMALLINT NOT NULL,
    [SalesGoal]  MONEY    NULL,
    [TotalSales] MONEY    NOT NULL,
    PRIMARY KEY CLUSTERED ([SalesYear] ASC)
);

