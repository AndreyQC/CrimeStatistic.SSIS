

CREATE PROCEDURE [etl].[usp_PackageExecutionHistory_Create]
(
    @PackageName [NVARCHAR](255),
    @PackageRunId [NVARCHAR](255),
    @PackageExecutionId  INT = NULL    OUTPUT
)
AS
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;
            INSERT INTO [etl].[PackageExecutionHistory]
                       (
                       [PackageName],
                       [PackageRunId],
                       [Status],
                       [executionstart]
                       )
                 VALUES
                       (
                       @PackageName,
                       @PackageRunId,
                       N'Started',
                       GETUTCDATE()
                       )

            SET @PackageExecutionId = SCOPE_IDENTITY();
            
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