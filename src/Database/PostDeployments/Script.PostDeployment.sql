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
:r .\TitleSeed.PostDeployment.sql
:r .\SuffixSeed.PostDeployment.sql
:r .\NameSourceSeed.PostDeployment.sql
:r .\BirthDateSourceSeed.PostDeployment.sql
:r .\GenderSeed.PostDeployment.sql
:r .\EthnicitySeed.PostDeployment.sql
:r .\CountrySeed.PostDeployment.sql
:r .\DomicileSeed.PostDeployment.sql
:r .\ContactTypeSeed.PostDeployment.sql
:r .\ContactUsageSeed.PostDeployment.sql
