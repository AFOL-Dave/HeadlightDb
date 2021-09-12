CREATE PROCEDURE [dbo].[RetrieveUserGroup]
AS
BEGIN

	-- This method should only ever be called, if the WebApplication is in Single LUG mode.
	-- It assumes there is one, and only one, LUG.

	SELECT
		UG.[Id],
		UG.[FullName],
		UG.[JoinType],
		UG.[NormalizedFullName],
		UG.[ShortName],
		UG.[NormalizedShortName],
		UG.[SlackWorkspaceId]
	FROM [dbo].[UserGroup] UG

	UPDATE [dbo].[UserGroup]
	SET [LastAccess] = GetUtcDate()

END