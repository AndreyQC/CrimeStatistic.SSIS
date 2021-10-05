CREATE TABLE [staging].[CountryRef] (
    [name]                     NVARCHAR (100) NOT NULL,
    [alpha_2]                  NVARCHAR (50)  NOT NULL,
    [alpha_3]                  NVARCHAR (50)  NOT NULL,
    [country_code]             INT            NOT NULL,
    [iso_3166_2]               NVARCHAR (50)  NOT NULL,
    [region]                   NVARCHAR (50)  NULL,
    [sub_region]               NVARCHAR (50)  NULL,
    [intermediate_region]      NVARCHAR (50)  NULL,
    [region_code]              INT            NULL,
    [sub_region_code]          INT            NULL,
    [intermediate_region_code] NVARCHAR (50)  NULL
);

