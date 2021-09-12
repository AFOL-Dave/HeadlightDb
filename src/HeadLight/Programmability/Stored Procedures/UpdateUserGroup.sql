CREATE PROCEDURE [dbo].[UpdateUserGroup]
(
	@id						BIGINT,
	@fullName				NVARCHAR(256),
	@joinType				TINYINT,
	@normalizedFullName		NVARCHAR(256),
	@shortName				NVARCHAR(64),
	@normalizedShortName	NVARCHAR(64),
	@slackWorkspaceId		NVARCHAR(256)
)
AS
BEGIN

	UPDATE [dbo].[UserGroup]
	SET [FullName] = @fullName,
		[JoinType] = @joinType,
		[NormalizedFullName] = @normalizedFullName,
		[NormalizedShortName] = @normalizedShortName,
		[ShortName] = @shortName,
		[SlackWorkspaceId] = @slackWorkspaceId,
		[Updated] = GetUtcDate()
	WHERE [Id] = @id;

END