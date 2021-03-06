Begin transaction
BEGIN TRY

ALTER TABLE dbo.[Document]
	DROP CONSTRAINT DF_Document_DateModified

ALTER TABLE dbo.[Document]
	DROP CONSTRAINT DF_Document_Revision

ALTER TABLE dbo.[Document]
	DROP CONSTRAINT DF_Document_BackupVersion

CREATE TABLE dbo.Tmp_Document
	(
	Id uniqueidentifier NOT NULL,
	PageId uniqueidentifier NULL,
	ControlId nvarchar(200) NULL,
	ContentId nvarchar(200) NULL,
	Title nvarchar(MAX) NULL,
	TextContent nvarchar(MAX) NULL,
	LanguageId uniqueidentifier NOT NULL,
	UserId uniqueidentifier NULL,
	DateModified datetime NOT NULL,
	RevisionVersion bit NOT NULL,
	BackupVersion bit NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]

ALTER TABLE dbo.Tmp_Document ADD CONSTRAINT
	DF_Document_DateModified DEFAULT (getdate()) FOR DateModified

ALTER TABLE dbo.Tmp_Document ADD CONSTRAINT
	DF_Document_Revision DEFAULT ((0)) FOR RevisionVersion

ALTER TABLE dbo.Tmp_Document ADD CONSTRAINT
	DF_Document_BackupVersion DEFAULT ((0)) FOR BackupVersion

IF EXISTS(SELECT * FROM dbo.[Document])
	 EXEC('INSERT INTO dbo.Tmp_Document (Id, PageId, ControlId, ContentId, Title, TextContent, LanguageId, UserId, DateModified, RevisionVersion, BackupVersion)
		SELECT Id, PageId, ControlId, ContentId, Title, TextContent, LanguageId, UserId, DateModified, RevisionVersion, BackupVersion FROM dbo.[Document] WITH (HOLDLOCK TABLOCKX)')

ALTER TABLE dbo.SnRelationship
	DROP CONSTRAINT FK_SnRelationship_Document

DROP TABLE dbo.[Document]

EXECUTE sp_rename N'dbo.Tmp_Document', N'Document', 'OBJECT' 

ALTER TABLE dbo.[Document] ADD CONSTRAINT
	PK_Document PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX IX_Page ON dbo.[Document]
	(
	PageId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX IX_ControlId ON dbo.[Document]
	(
	ControlId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX IX_ContentId ON dbo.[Document]
	(
	ContentId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX IX_Filter ON dbo.[Document]
	(
	LanguageId,
	UserId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX IX_BackupVersion ON dbo.[Document]
	(
	BackupVersion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX IX_RevisionVersionBackupVersion ON dbo.[Document]
	(
	RevisionVersion,
	BackupVersion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX IX_MainFilter ON dbo.[Document]
	(
	PageId,
	ControlId,
	ContentId,
	LanguageId,
	RevisionVersion,
	BackupVersion
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

CREATE NONCLUSTERED INDEX IX_Document_41 ON dbo.[Document]
	(
	PageId,
	RevisionVersion
	) INCLUDE (Id, ControlId, ContentId, Title, TextContent, LanguageId, UserId, DateModified, BackupVersion) 
 WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

ALTER TABLE dbo.SnRelationship ADD CONSTRAINT
	FK_SnRelationship_Document FOREIGN KEY
	(
	DocumentId
	) REFERENCES dbo.[Document]
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