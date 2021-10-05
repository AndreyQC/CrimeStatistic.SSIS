/*=================================================================================
SP for 
==================================================================================*/
CREATE PROCEDURE [etl].[usp_DimDateSeed]
   @DateBegin  DATE
  ,@DateEnd  DATE = NULL
AS

IF (@DateEnd IS NULL)
  SET @DateEnd = CAST(GETDATE() AS DATE);

IF (@DateEnd < @DateBegin)
    BEGIN
      RAISERROR ('DateBegin must be <= DateEnd',10,1);
    END
ELSE
    BEGIN
    DECLARE @d DATE = @DateBegin;

        TRUNCATE TABLE dwh.DimDate;

        WHILE (@d <= @DateEnd)
        BEGIN
          INSERT INTO dwh.DimDate
          (
            [DateSK]
            ,[DateBK]
            ,[CalendarMonth]
            ,[CalendarMonthLongName]
            ,[CalendarMonthShortName]
            ,[CalendarQuarter]
            ,[CalendarQuarterShortName]
            ,[CalendarYear]
            ,[CalendarYearMonth]
            ,[CalendarYearQuarter]
            ,[DayLongName]
            ,[DayShortName]
            ,[DayWeekNumber]
          )
          SELECT
            CAST(YEAR(@d) AS VARCHAR(4)) + 
              CASE WHEN MONTH(@d) < 10 THEN '0' + CAST(MONTH(@d) AS VARCHAR(1))
                ELSE CAST(MONTH(@d) AS VARCHAR(2))
              END + 
              CASE WHEN DAY(@d) < 10 THEN '0' + CAST(DAY(@d) AS VARCHAR(1))
                ELSE CAST(DAY(@d) AS VARCHAR(2))
              END
            ,@d
            ,MONTH(@d)
            ,DATENAME(mm,@d)
            ,LEFT(DATENAME(mm,@d),3)
            ,DATEPART(qq,@d)
            ,'Q' + CAST(DATEPART(qq,@d) AS VARCHAR(1))
            ,YEAR(@d)
            ,CAST(YEAR(@d) AS VARCHAR(4)) + '-' +
              CASE WHEN MONTH(@d) < 10 THEN '0' + CAST(MONTH(@d) AS VARCHAR(1))
                ELSE CAST(MONTH(@d) AS VARCHAR(2))
              END
            ,CAST(YEAR(@d) AS VARCHAR(4)) + '-' +'Q' + CAST(DATEPART(qq,@d) AS VARCHAR(1))
            ,DATENAME(dw,@d)
            ,LEFT(DATENAME(dw,@d),3)
            ,DATEPART(dw,@d)
          WHERE 
            NOT EXISTS (SELECT 1 FROM dwh.DimDate WHERE DateBK = @d);

          SET @d = DATEADD(dd,1,@d);
        END
END