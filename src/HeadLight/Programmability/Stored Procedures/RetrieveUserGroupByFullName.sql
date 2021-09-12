CREATE PROCEDURE [dbo].[RetrieveUserGroupByFullName]
(
	@normalizedFullName	NVARCHAR(256)
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
	WHERE UG.[NormalizedFullName] = @normalizedFullName;

	UPDATE [dbo].[UserGroup]
	SET [LastAccess] = GetUtcDate()
	WHERE [NormalizedFullName] = @normalizedFullName;

END