CREATE TABLE [dwh].[DimCrimeType] (
    [DimCrimeTypeKey] INT            IDENTITY (1, 1) NOT NULL,
    [CrimeType]       NVARCHAR (100) NOT NULL,
    [sysCreatedAt]    DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedAt]    DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedBy]    INT            DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy]    INT            DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_DimCrimeType] PRIMARY KEY CLUSTERED ([DimCrimeTypeKey] ASC)
);

