CREATE TABLE [msbicourse].[staging_Customer] (
    [custid]       INT           NOT NULL,
    [companyname]  NVARCHAR (40) NOT NULL,
    [contactname]  NVARCHAR (30) NOT NULL,
    [contacttitle] NVARCHAR (30) NOT NULL,
    [address]      NVARCHAR (60) NOT NULL,
    [city]         NVARCHAR (15) NOT NULL,
    [region]       NVARCHAR (15) NULL,
    [postalcode]   NVARCHAR (10) NULL,
    [country]      NVARCHAR (15) NOT NULL,
    [phone]        NVARCHAR (24) NOT NULL,
    [fax]          NVARCHAR (24) NULL,
    [sysCreatedAt] DATETIME      DEFAULT (getutcdate()) NULL,
    [sysChangedAt] DATETIME      DEFAULT (getutcdate()) NULL,
    [sysChangedBy] INT           DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy] INT           DEFAULT ((-1)) NOT NULL
);

