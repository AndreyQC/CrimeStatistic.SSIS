CREATE TABLE [msbicourse].[staging_FactSales] (
    [custid]       INT           NOT NULL,
    [ordermonth]   NVARCHAR (40) NOT NULL,
    [qty]          NVARCHAR (40) NOT NULL,
    [sysCreatedAt] DATETIME      DEFAULT (getutcdate()) NULL,
    [sysChangedAt] DATETIME      DEFAULT (getutcdate()) NULL,
    [sysChangedBy] INT           DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy] INT           DEFAULT ((-1)) NOT NULL
);

