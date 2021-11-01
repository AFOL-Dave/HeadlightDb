CREATE PROCEDURE [dbo].[RetrieveMembershipsByUserGroupId]
(
	@userGroupId	BIGINT
)
AS
BEGIN

	UPDATE M
	SET [LastAccess] = GetUtcDate()
	FROM [dbo].[Membership] M
	WHERE M.[UserGroupId] = @userGroupId;

	SELECT
		M.[Id],
		M.[UserId],
		M.[UserGroupId],
		M.[IsActive],
		M.[IsCurrent],
		M.[IsPrimary],
		M.[SlackMemberId],
		U.[DisplayName],
		U.[GivenName],
		U.[SurName]
	FROM [dbo].[Membership] M
		INNER JOIN [dbo].[User] U
			ON M.[UserId] = U.[Id]
	WHERE M.[UserGroupId] = @userGroupId;

END