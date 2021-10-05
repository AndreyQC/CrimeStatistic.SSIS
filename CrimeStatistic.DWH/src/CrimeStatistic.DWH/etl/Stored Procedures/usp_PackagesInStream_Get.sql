CREATE PROCEDURE [etl].[usp_PackagesInStream_Get]
     @pStreamID INT
    
AS
   SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        SELECT [PackageName]
        FROM [etl].[PackageStream]
        WHERE [StreamID]=@pStreamID
        ORDER BY [Order]
        
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Rollback any active or uncommittable transactions before
        -- inserting information in the ErrorLog
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION;
        END

      
    END CATCH;