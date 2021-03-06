Begin transaction
BEGIN TRY

	CREATE TABLE dbo.Tmp_CalendarEventRecurringDefinitionType
	(
	Id uniqueidentifier NOT NULL,
	Name nvarchar(250) NOT NULL,
	Abrv nvarchar(250) NOT NULL
	)  ON [PRIMARY]

	IF EXISTS(SELECT * FROM dbo.CalendarEventRecurringDefinitionType)
	 EXEC('INSERT INTO dbo.Tmp_CalendarEventRecurringDefinitionType (Id, Name)
		SELECT Id, Name FROM dbo.CalendarEventRecurringDefinitionType WITH (HOLDLOCK TABLOCKX)')

	ALTER TABLE dbo.CalendarEventRecurringDefinition
	DROP CONSTRAINT FK_CalendarEventRecurringDefinition_CalendarEventRecurringDefinitionType

	DROP TABLE dbo.CalendarEventRecurringDefinitionType

	EXECUTE sp_rename N'dbo.Tmp_CalendarEventRecurringDefinitionType', N'CalendarEventRecurringDefinitionType', 'OBJECT' 

	ALTER TABLE dbo.CalendarEventRecurringDefinitionType ADD CONSTRAINT
	PK_CalendarEventRecurringDefinitionType PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

	ALTER TABLE dbo.CalendarEventRecurringDefinition ADD CONSTRAINT
	FK_CalendarEventRecurringDefinition_CalendarEventRecurringDefinitionType FOREIGN KEY
	(
	RecurringTypeId
	) REFERENCES dbo.CalendarEventRecurringDefinitionType
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
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
