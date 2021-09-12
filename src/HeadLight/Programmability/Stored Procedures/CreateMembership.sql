CREATE PROCEDURE [dbo].[CreateMembership]
(
	@id				BIGINT OUTPUT,
	@userId			BIGINT,
	@userGroupId	BIGINT,
	@isActive		BIT,
	@slackMemberId	NVARCHAR(256)
)
AS
BEGIN

	DECLARE @TRUE	BIT	= 1;
	DECLARE @FALSE	BIT = 0;

	DECLARE @primaryUserGroup	BIGINT;
	DECLARE @currentUserGroup	BIGINT;

	SELECT @primaryUserGroup = M.[UserGroupId]
	FROM [dbo].[Membership] M
	WHERE M.[UserId] = @userId AND
	      M.[IsPrimary] = @TRUE;

	SELECT @currentUserGroup = M.[UserGroupId]
	FROM [dbo].[Membership] M
	WHERE M.[UserId] = @userId AND
	      M.[IsCurrent] = @TRUE;

	INSERT INTO [dbo].[Membership]
	(
		[UserId],
		[UserGroupId],
		[IsActive],
		[IsCurrent],
		[IsPrimary],
		[SlackMemberId]
	)
	VALUES
	(
		@userId,
		@userGroupId,
		@isActive,
		CASE
			WHEN @currentUserGroup IS NULL THEN @TRUE
			ELSE @FALSE
		END,
		CASE
			WHEN @primaryUserGroup IS NULL THEN @TRUE
			ELSE @FALSE
		END,
		@slackMemberId
	);

	SET @id = SCOPE_IDENTITY();

END