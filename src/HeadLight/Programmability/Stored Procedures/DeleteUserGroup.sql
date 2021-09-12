CREATE PROCEDURE [dbo].[DeleteUserGroup]
(
	@id	BIGINT
)
AS
BEGIN

	DELETE FROM [dbo].[UserGroup]
	WHERE [Id] = @id;

END