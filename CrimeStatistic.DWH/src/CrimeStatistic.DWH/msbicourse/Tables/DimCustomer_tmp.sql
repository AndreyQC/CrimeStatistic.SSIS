CREATE TABLE [msbicourse].[DimCustomer_tmp] (
    [RowID]          INT           IDENTITY (1, 1) NOT NULL,
    [DimCustomerKey] INT           NULL,
    [CustomerBK]     INT           NULL,
    [contactname]    NVARCHAR (30) NULL,
    [contacttitle]   NVARCHAR (30) NULL,
    [city]           NVARCHAR (15) NULL,
    [region]         NVARCHAR (15) NULL,
    [postalcode]     NVARCHAR (10) NULL,
    [country]        NVARCHAR (15) NULL,
    [phone]          NVARCHAR (24) NULL,
    [fax]            NVARCHAR (24) NULL,
    [IsCurrent]      INT           NULL,
    [ValidFromDate]  DATETIME      NULL,
    [ValidToDate]    DATETIME      NULL,
    [action]         INT           NOT NULL,
    [sysCreatedAt]   DATETIME      DEFAULT (getutcdate()) NULL,
    [sysChangedAt]   DATETIME      DEFAULT (getutcdate()) NULL,
    [sysChangedBy]   INT           DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy]   INT           DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_DimCustomer_tmp] PRIMARY KEY CLUSTERED ([RowID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1 - to insert , 2 - update', @level0type = N'SCHEMA', @level0name = N'msbicourse', @level1type = N'TABLE', @level1name = N'DimCustomer_tmp', @level2type = N'COLUMN', @level2name = N'action';

