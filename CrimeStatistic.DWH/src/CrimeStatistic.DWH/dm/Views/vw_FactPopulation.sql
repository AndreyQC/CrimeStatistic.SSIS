CREATE VIEW [dm].[vw_FactPopulation]
    AS 

    SELECT  [FactPopulationKey]
      ,[DimGeographyKey]
      ,[DimDateKey]
      ,[Population]
  FROM [dwh].[FactPopulation]