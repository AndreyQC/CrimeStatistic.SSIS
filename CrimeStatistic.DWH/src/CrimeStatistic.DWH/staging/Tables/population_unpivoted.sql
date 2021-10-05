CREATE TABLE [staging].[population_unpivoted] (
    [RowId]        INT       IDENTITY (1, 1) NOT NULL,
    [Year]         NCHAR (4) NOT NULL,
    [CountryCode]  NCHAR (3) NOT NULL,
    [Population]   BIGINT    NOT NULL,
    [sysCreatedAt] DATETIME  DEFAULT (getutcdate()) NULL,
    [sysChangedAt] DATETIME  DEFAULT (getutcdate()) NULL,
    [sysChangedBy] INT       DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy] INT       DEFAULT ((-1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([RowId] ASC)
);



