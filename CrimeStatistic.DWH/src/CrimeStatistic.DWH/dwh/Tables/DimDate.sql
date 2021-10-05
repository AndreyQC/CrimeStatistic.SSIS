CREATE TABLE [dwh].[DimDate] (
    [DateSK]                   INT           NOT NULL,
    [DateBK]                   DATE          NULL,
    [CalendarMonth]            SMALLINT      NULL,
    [CalendarMonthLongName]    NVARCHAR (9)  NULL,
    [CalendarMonthShortName]   NVARCHAR (3)  NULL,
    [CalendarQuarter]          SMALLINT      NULL,
    [CalendarQuarterShortName] NVARCHAR (2)  NULL,
    [CalendarYear]             NVARCHAR (4)  NULL,
    [CalendarYearMonth]        NVARCHAR (7)  NULL,
    [CalendarYearQuarter]      NVARCHAR (10) NULL,
    [DayLongName]              NVARCHAR (9)  NULL,
    [DayShortName]             NVARCHAR (3)  NULL,
    [DayWeekNumber]            SMALLINT      NULL,
    [sysCreatedAt]             DATETIME      DEFAULT (getutcdate()) NULL,
    [sysChangedAt]             DATETIME      DEFAULT (getutcdate()) NULL,
    [sysChangedBy]             INT           DEFAULT ((-1)) NOT NULL,
    [sysCreatedBy]             INT           DEFAULT ((-1)) NOT NULL,
    CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED ([DateSK] ASC)
);

