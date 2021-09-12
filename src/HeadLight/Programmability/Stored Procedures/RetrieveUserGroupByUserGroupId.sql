CREATE PROCEDURE [dbo].[RetrieveUserGroupByUserGroupId]
(
	@id	BIGINT
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
	WHERE UG.[Id] = @id;

	UPDATE [dbo].[UserGroup]
	SET [LastAccess] = GetUtcDate()
	WHERE [Id] = @id;

END
