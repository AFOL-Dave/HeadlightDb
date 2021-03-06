CREATE TABLE [dbo].[Role]
(
	[Id]                    BIGINT          NOT NULL IDENTITY (1, 1), 
    [RoleName]              NVARCHAR(256)   NOT NULL, 
    [NormalizedRoleName]    NVARCHAR(256)   NOT NULL, 
    [UserGroupId]           BIGINT          NOT NULL, 
    [IsDefault]             BIT             NOT NULL CONSTRAINT [DF_Role_IsDefault] DEFAULT 0, 
    [Created]               DATETIMEOFFSET  NOT NULL CONSTRAINT [DF_Role_Created] DEFAULT GetUtcDate(), 
    [Updated]               DATETIMEOFFSET  NULL, 
    [LastAccess]            DATETIMEOFFSET  NULL,
    CONSTRAINT [PK_Role] PRIMARY KEY ([Id] ASC),
    CONSTRAINT [FK_Role_UserGroup_UserGroupId] FOREIGN KEY ([UserGroupId]) REFERENCES [UserGroup]([Id])
);
GO

CREATE INDEX [IX_Role_NormalizedRoleName] ON [dbo].[Role]([NormalizedRoleName]);
GO

CREATE INDEX [IX_Role_UserGroupId] ON [dbo].[Role](UserGroupId);
GO