CREATE VIEW [dm].[vw_DimGeography]
    AS 
SELECT 
    [DimGeographyKey] 
    ,[Region]         
    ,[SubRegion]      
    ,[Country]        
    ,[CountryCode]   
  FROM [dwh].[DimGeography]