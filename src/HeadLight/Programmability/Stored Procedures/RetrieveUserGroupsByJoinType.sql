CREATE PROCEDURE [dbo].[RetrieveUserGroupsByJoinType]
(
	@joinType	TINYINT
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
		INNER JOIN [dbo].[JoinType] JT
			ON [UG].[JoinType] = JT.[AssignedType]
	WHERE JT.[SearchType] = @joinType;

	UPDATE UG
	SET [LastAccess] = GetUtcDate()
	FROM [dbo].[UserGroup] UG
		INNER JOIN [dbo].[JoinType] JT
			ON [UG].[JoinType] = JT.[AssignedType]
	WHERE JT.[SearchType] = @joinType;

END