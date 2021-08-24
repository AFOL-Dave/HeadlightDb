CREATE ROLE [WebApplication];
GO

GRANT EXECUTE ON [dbo].[CreateLogin] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[CreateUser] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[DeleteLogin] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[DeleteUser] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveLoginByUserId] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveUserByEmail] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveUserByLogin] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveUserByUserId] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[UpdateUser] TO [WebApplication];
GO