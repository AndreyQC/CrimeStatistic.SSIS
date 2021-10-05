CREATE TABLE [staging].[uncrime_unpivoted] (
    [RowId]         INT            IDENTITY (1, 1) NOT NULL,
    [FileName]      NVARCHAR (100) NULL,
    [RegionName]    NVARCHAR (100) NOT NULL,
    [SubRegionName] NVARCHAR (100) NOT NULL,
    [CountryName]   NVARCHAR (100) NOT NULL,
    [Year]          NCHAR (4)      NOT NULL,
    [Count]         INT            NOT NULL,
    [sysCreatedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedBy]  INT            DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy]  INT            DEFAULT ((-1)) NOT NULL
);



