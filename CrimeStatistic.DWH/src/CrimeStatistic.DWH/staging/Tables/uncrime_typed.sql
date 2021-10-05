CREATE TABLE [staging].[uncrime_typed] (
    [FileName]      NVARCHAR (100) NULL,
    [SourceItemId]  INT            DEFAULT ((-1)) NOT NULL,
    [RegionName]    NVARCHAR (100) NULL,
    [SubRegionName] NVARCHAR (100) NULL,
    [CountryName]   NVARCHAR (100) NULL,
    [Count_2003]    BIGINT         NULL,
    [Count_2004]    BIGINT         NULL,
    [Count_2005]    BIGINT         NULL,
    [Count_2006]    BIGINT         NULL,
    [Count_2007]    BIGINT         NULL,
    [Count_2008]    BIGINT         NULL,
    [Count_2009]    BIGINT         NULL,
    [Count_2010]    BIGINT         NULL,
    [Count_2011]    BIGINT         NULL,
    [Count_2012]    BIGINT         NULL,
    [Count_2013]    BIGINT         NULL,
    [Count_2014]    BIGINT         NULL,
    [Count_2015]    BIGINT         NULL,
    [Count_2016]    BIGINT         NULL,
    [Count_2017]    BIGINT         NULL,
    [sysCreatedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedAt]  DATETIME       DEFAULT (getutcdate()) NULL,
    [sysChangedBy]  INT            DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy]  INT            DEFAULT ((-1)) NOT NULL
);



