CREATE PROCEDURE [dbo].[RetrieveMembershipByMembershipId]
(
	@membershipId	BIGINT
)
AS
BEGIN

	UPDATE [dbo].[Membership]
	SET [LastAccess] = GetUtcDate()
	WHERE [Id] = @membershipId;

	SELECT
		[Id],
		[UserId], 
		[UserGroupId], 
		[IsActive], 
		[IsCurrent], 
		[IsPrimary],
		[SlackMemberId]
	FROM [dbo].[Membership] M
	WHERE M.[Id] = @membershipId;

END