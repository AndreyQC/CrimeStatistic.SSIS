CREATE TABLE [dwh].[FactPopulation] (
    [FactPopulationKey] INT      IDENTITY (1, 1) NOT NULL,
    [DimGeographyKey]   INT      DEFAULT ((-1)) NOT NULL,
    [DimDateKey]        INT      DEFAULT ((-1)) NOT NULL,
    [Population]        BIGINT   NOT NULL,
    [sysCreatedAt]      DATETIME DEFAULT (getutcdate()) NULL,
    [sysChangedAt]      DATETIME DEFAULT (getutcdate()) NULL,
    [sysChangedBy]      INT      DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy]      INT      DEFAULT ((-1)) NOT NULL,
    PRIMARY KEY CLUSTERED ([FactPopulationKey] ASC)
);

