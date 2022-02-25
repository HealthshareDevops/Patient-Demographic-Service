CREATE TABLE [dbo].[ContactTypes]
(
	[Id] BIGINT NOT NULL PRIMARY KEY, 
    [Code] NVARCHAR(10) NOT NULL, 
    [Description] NVARCHAR(200) NULL, 
    [Comment] NVARCHAR(200) NULL
)
