CREATE TABLE [dbo].[UserGroup]
(
	[Id]					BIGINT			NOT NULL IDENTITY (1, 1),
	[FullName]				NVARCHAR(256)	NOT NULL,
	[JoinType]			    TINYINT			NOT NULL,
	[NormalizedFullName]	NVARCHAR(256)	NOT NULL,
	[NormalizedShortName]	NVARCHAR(64)	NOT NULL,
	[ShortName]				NVARCHAR(64)	NOT NULL,
	[SlackWorkspaceId]		NVARCHAR(256)	NULL,
    [Created]				DATETIMEOFFSET  NOT NULL CONSTRAINT [DF_UserGroup_Created] DEFAULT GetUtcDate(),
	[Updated]				DATETIMEOFFSET	NULL,
    [LastAccess]			DATETIMEOFFSET  NULL,
	CONSTRAINT [PK_UserGroup] PRIMARY KEY ([Id] ASC),
	CONSTRAINT [FK_UserGroup_JoinType_JoinTypeId] FOREIGN KEY (JoinType) REFERENCES [JoinType] ([Id])
);
GO

CREATE INDEX [IX_UserGroup_NormalizedFullName] ON [dbo].[UserGroup] ([NormalizedFullName]);
GO

CREATE INDEX [IX_UserGroup_NormalizedShortName] ON [dbo].[UserGroup] ([NormalizedShortName]);
GO