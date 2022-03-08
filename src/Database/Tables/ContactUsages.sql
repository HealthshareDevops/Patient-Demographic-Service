CREATE TABLE [dbo].[ContactUsages]
(
	[Id] BIGINT NOT NULL PRIMARY KEY, 
    [Code] NVARCHAR NOT NULL, 
    [Description] NVARCHAR(200) NULL, 
    [Comment] NVARCHAR(200) NULL
)
