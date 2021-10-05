CREATE VIEW [dm].[vw_DimCrimeType]
AS 
  SELECT  [DimCrimeTypeKey]
      ,[CrimeType]
  FROM [dwh].[DimCrimeType]
  UNION ALL
  SELECT -1, 'Unknown'