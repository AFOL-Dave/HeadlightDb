CREATE ROLE [WebApplication];
GO

GRANT EXECUTE ON [dbo].[CreateLogin] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[CreateMembership] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[CreateUser] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[CreateUserGroup] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[DeleteLogin] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[DeleteMembership] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[DeleteUser] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[DeleteUserGroup] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveLoginByUserId] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveMembershipByMembershipId] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveMembershipsByUserGroupId] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveMembershipsByUserId] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveUserByEmail] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveUserByLogin] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveUserByUserId] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveUserGroup] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveUserGroupByFullName] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveUserGroupByShortName] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveUserGroupByUserGroupId] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[RetrieveUserGroupsByJoinType] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[UpdateMembership] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[UpdateUser] TO [WebApplication];
GO

GRANT EXECUTE ON [dbo].[UpdateUserGroup] TO [WebApplication];
GO