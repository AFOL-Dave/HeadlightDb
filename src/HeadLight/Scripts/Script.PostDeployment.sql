/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF NOT EXISTS ( SELECT TOP (1) 1
                FROM [dbo].[JoinType] )
BEGIN

	INSERT INTO [dbo].[JoinType]
	(
		[SearchType],
		[AssignedType]
	)
	VALUES
	( 1, 1 ),
	( 1, 3 ),
	( 1, 5 ),
	( 1, 7 ),
	( 2, 2 ),
	( 2, 3 ),
	( 2, 6 ),
	( 2, 7 ),
	( 3, 3 ),
	( 3, 7 ),
	( 4, 4 ),
	( 4, 5 ),
	( 4, 6 ),
	( 4, 7 ),
	( 5, 5 ),
	( 5, 7 ),
	( 6, 6 ),
	( 6, 7 ),
	( 7, 7 )

END