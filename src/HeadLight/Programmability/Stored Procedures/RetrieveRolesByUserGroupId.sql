CREATE PROCEDURE [dbo].[RetrieveRolesByUserGroupId]
(
	@userGroupId	BIGINT
)
AS
BEGIN

	UPDATE [dbo].[Role]
	SET LastAccess = GetUtcDate()
	FROM [dbo].[Role] R
		INNER JOIN [dbo].[UserGroup] UG
		 ON R.[UserGroupId] = UG.[Id]
	WHERE UG.[Id] = @userGroupId;

	SELECT
		R.[Id],
		R.[RoleName],
		R.[NormalizedRoleName],
		R.[UserGroupId],
		R.[IsDefault]
	FROM [dbo].[Role] R
		INNER JOIN [dbo].[UserGroup] UG
		 ON R.[UserGroupId] = UG.[Id];

END