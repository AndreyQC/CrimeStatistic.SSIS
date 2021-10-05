CREATE TABLE [msbicourse].[DimCustomer] (
    [DimCustomerKey] INT           IDENTITY (1, 1) NOT NULL,
    [CustomerBK]     INT           NOT NULL,
    [contactname]    NVARCHAR (30) NOT NULL,
    [contacttitle]   NVARCHAR (30) NOT NULL,
    [city]           NVARCHAR (15) NOT NULL,
    [region]         NVARCHAR (15) NULL,
    [postalcode]     NVARCHAR (10) NULL,
    [country]        NVARCHAR (15) NOT NULL,
    [phone]          NVARCHAR (24) NOT NULL,
    [fax]            NVARCHAR (24) NULL,
    [IsCurrent]      INT           NOT NULL,
    [ValidFromDate]  DATETIME      DEFAULT (getutcdate()) NULL,
    [ValidToDate]    DATETIME      NULL,
    [sysCreatedAt]   DATETIME      DEFAULT (getutcdate()) NULL,
    [sysChangedAt]   DATETIME      DEFAULT (getutcdate()) NULL,
    [sysChangedBy]   INT           DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy]   INT           DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED ([DimCustomerKey] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'business key of entry (custid)', @level0type = N'SCHEMA', @level0name = N'msbicourse', @level1type = N'TABLE', @level1name = N'DimCustomer', @level2type = N'COLUMN', @level2name = N'CustomerBK';

