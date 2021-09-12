CREATE PROCEDURE [dbo].[RetrieveMembershipsByUserId]
(
	@userId	BIGINT
)
AS
BEGIN

	UPDATE M
	SET [LastAccess] = GetUtcDate()
	FROM [dbo].[Membership] M
	WHERE M.[UserId] = @userId;

	SELECT
		M.[Id],
		M.[UserId],
		M.[UserGroupId],
		M.[IsActive],
		M.[IsCurrent],
		M.[IsPrimary],
		M.[SlackMemberId]
	FROM [dbo].[Membership] M
	WHERE M.[UserId] = @userId;

END