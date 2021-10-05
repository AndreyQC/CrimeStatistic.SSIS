CREATE VIEW [dm].[vw_FactCrime]
    AS 

    SELECT [FactCrimeKey]
      ,[DimGeographyKey]
      ,[DimDateKey]
      ,[DimCrimeTypeKey]
      ,[NumberOfCrime]
  FROM [dwh].[FactCrime]