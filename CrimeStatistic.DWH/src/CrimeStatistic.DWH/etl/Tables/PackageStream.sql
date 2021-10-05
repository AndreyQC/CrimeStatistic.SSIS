CREATE TABLE [etl].[PackageStream] (
    [PackageStreamID] INT           IDENTITY (1, 1) NOT NULL,
    [PackageName]     NVARCHAR (50) NOT NULL,
    [StreamID]        INT           NOT NULL,
    [Order]           INT           NULL
);

