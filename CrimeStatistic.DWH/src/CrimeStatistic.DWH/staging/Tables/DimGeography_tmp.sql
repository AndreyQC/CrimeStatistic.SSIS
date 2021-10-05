CREATE TABLE [staging].[DimGeography_tmp] (
    [Country]      NVARCHAR (255) NOT NULL,
    [CountryCode]  NVARCHAR (3)   NOT NULL,
    [sysCreatedAt] DATETIME       CONSTRAINT [DF_DimGeography_tmp_typed_sysCreatedAt] DEFAULT (getutcdate()) NULL,
    [sysChangedAt] DATETIME       CONSTRAINT [DF_DimGeography_tmp_typed_sysChangedAt] DEFAULT (getutcdate()) NULL,
    [sysCreatedBy] INT            CONSTRAINT [DF_DimGeography_tmp_typed_sysCreatedBy] DEFAULT ((-1)) NOT NULL,
    [sysChangedBy] INT            CONSTRAINT [DF_DimGeography_tmp_typed_sysChangedBy] DEFAULT ((-1)) NOT NULL
);

