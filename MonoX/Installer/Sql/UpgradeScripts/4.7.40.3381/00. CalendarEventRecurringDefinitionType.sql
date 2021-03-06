Begin transaction
BEGIN TRY
	CREATE TABLE dbo.CalendarEventRecurringDefinitionType
	(
	Id uniqueidentifier NOT NULL,
	Name nvarchar(250) NOT NULL
	)  ON [PRIMARY]

	ALTER TABLE dbo.CalendarEventRecurringDefinitionType ADD CONSTRAINT
	PK_CalendarEventRecurringDefinitionType PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]


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
