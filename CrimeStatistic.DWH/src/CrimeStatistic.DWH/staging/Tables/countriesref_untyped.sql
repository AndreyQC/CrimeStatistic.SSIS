CREATE TABLE [staging].[countriesref_untyped] (
    [SourceItemId]             INT            DEFAULT ((-1)) NOT NULL,
    [name]                     NVARCHAR (100) NULL,
    [alpha-2]                  NVARCHAR (100) NULL,
    [alpha-3]                  NVARCHAR (100) NULL,
    [country-code]             NVARCHAR (100) NULL,
    [iso_3166-2]               NVARCHAR (100) NULL,
    [region]                   NVARCHAR (100) NULL,
    [sub-region]               NVARCHAR (100) NULL,
    [intermediate-region]      NVARCHAR (100) NULL,
    [region-code]              NVARCHAR (100) NULL,
    [sub-region-code]          NVARCHAR (100) NULL,
    [intermediate-region-code] NVARCHAR (100) NULL,
    [sysCreatedAt]             DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedAt]             DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedBy]             INT            DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy]             INT            DEFAULT ((-1)) NOT NULL
);

