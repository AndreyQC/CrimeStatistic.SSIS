CREATE TABLE [dwh].[DimGeography] (
    [DimGeographyKey] INT            IDENTITY (1, 1) NOT NULL,
    [Region]          NVARCHAR (255) NOT NULL,
    [SubRegion]       NVARCHAR (255) NOT NULL,
    [Country]         NVARCHAR (255) NOT NULL,
    [CountryCode]     NVARCHAR (3)   NOT NULL,
    [sysCreatedAt]    DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedAt]    DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedBy]    INT            DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy]    INT            DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_DimGeography] PRIMARY KEY CLUSTERED ([DimGeographyKey] ASC)
);

