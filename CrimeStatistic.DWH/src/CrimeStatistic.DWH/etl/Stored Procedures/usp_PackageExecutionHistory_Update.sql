CREATE PROCEDURE [etl].[usp_PackageExecutionHistory_Update]
(
    @PackageName [NVARCHAR](255),
    @PackageRunId [NVARCHAR](255),
    @Status [NVARCHAR](255),
    @Description [NVARCHAR](MAX)
)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;
            UPDATE [etl].[PackageExecutionHistory]
               SET [executionend] = GETUTCDATE()
                  ,[sysChangedAt] = GETUTCDATE()
                  ,[Status] = @Status
                  ,[Description] = @Description
             WHERE [PackageRunId] = @PackageRunId
        COMMIT TRANSACTION;
    END TRY

    BEGIN CATCH
        DECLARE @ErrorMessage [NVARCHAR](4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SET @ErrorMessage = ERROR_MESSAGE();
        SET @ErrorSeverity = ERROR_SEVERITY();
        SET @ErrorState = ERROR_STATE();

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
        IF @@TRANCOUNT > 0
            BEGIN
                ROLLBACK TRANSACTION;
            END
    END CATCH
END