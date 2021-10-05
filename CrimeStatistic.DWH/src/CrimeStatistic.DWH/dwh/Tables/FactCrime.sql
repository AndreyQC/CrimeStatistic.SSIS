CREATE TABLE [dwh].[FactCrime] (
    [FactCrimeKey]    INT      IDENTITY (1, 1) NOT NULL,
    [DimGeographyKey] INT      DEFAULT ((-1)) NOT NULL,
    [DimDateKey]      INT      DEFAULT ((-1)) NOT NULL,
    [DimCrimeTypeKey] INT      DEFAULT ((-1)) NOT NULL,
    [NumberOfCrime]   BIGINT   NOT NULL,
    [sysCreatedAt]    DATETIME DEFAULT (getutcdate()) NULL,
    [sysChangedAt]    DATETIME DEFAULT (getutcdate()) NULL,
    [sysChangedBy]    INT      DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy]    INT      DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_FactCrime] PRIMARY KEY CLUSTERED ([FactCrimeKey] ASC)
);

