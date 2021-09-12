CREATE PROCEDURE [dbo].[RetrieveUserGroupByShortName]
(
	@normalizedShortName	NVARCHAR(64)
)
AS
BEGIN

	SELECT
		UG.[Id],
		UG.[FullName],
		UG.[JoinType],
		UG.[NormalizedFullName],
		UG.[ShortName],
		UG.[NormalizedShortName],
		UG.[SlackWorkspaceId]
	FROM [dbo].[UserGroup] UG
	WHERE UG.[NormalizedShortName] = @normalizedShortName;

	UPDATE [dbo].[UserGroup]
	SET [LastAccess] = GetUtcDate()
	WHERE [NormalizedShortName] = @normalizedShortName;

END