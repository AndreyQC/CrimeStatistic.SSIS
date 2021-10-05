CREATE TABLE [etl].[PackageExecutionHistory] (
    [PackageExecutionHistoryId] INT            IDENTITY (1, 1) NOT NULL,
    [PackageName]               NVARCHAR (255) NOT NULL,
    [PackageRunId]              NVARCHAR (255) NOT NULL,
    [Status]                    NVARCHAR (255) NULL,
    [Description]               NVARCHAR (MAX) NULL,
    [executionstart]            DATETIME       CONSTRAINT [DF_PackageExecutionHistory_executionstart] DEFAULT (getutcdate()) NULL,
    [executionend]              DATETIME       NULL,
    [sysCreatedAt]              DATETIME       CONSTRAINT [DF_PackageExecutionHistory_sysCreatedAt] DEFAULT (getutcdate()) NULL,
    [sysChangedAt]              DATETIME       CONSTRAINT [DF_PackageExecutionHistory_sysChangedAt] DEFAULT (getutcdate()) NULL,
    [sysCreatedBy]              INT            CONSTRAINT [DF_PackageExecutionHistory_sysCreatedBy] DEFAULT ((-1)) NULL,
    [sysChangedBy]              INT            CONSTRAINT [DF_PackageExecutionHistory_sysChangedBy] DEFAULT ((-1)) NULL,
    CONSTRAINT [PK_PackageExecutionHistory] PRIMARY KEY CLUSTERED ([PackageExecutionHistoryId] ASC)
);

