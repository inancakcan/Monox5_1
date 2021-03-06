Begin transaction
BEGIN TRY

	ALTER TABLE dbo.CalendarEventEntry ADD
	IsBusy bit NOT NULL CONSTRAINT DF_CalendarEventEntry_IsBusy DEFAULT 1
	
COMMIT TRANSACTION                              
END TRY

BEGIN CATCH
       SELECT
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState,
        ERROR_PROCEDURE() AS ErrorProcedure,
        ERROR_LINE() AS ErrorLine,
        ERROR_MESSAGE() AS ErrorMessage;     
       ROLLBACK TRANSACTION
END CATCH   	

