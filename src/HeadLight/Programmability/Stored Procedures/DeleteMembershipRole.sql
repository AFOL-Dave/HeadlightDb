CREATE PROCEDURE [dbo].[DeleteMembershipRole]
(
	@membershipRoleId	BIGINT OUTPUT
)
AS
BEGIN

	DELETE FROM [dbo].[MembershipRole]
	WHERE [Id] = @membershipRoleId;
	
END