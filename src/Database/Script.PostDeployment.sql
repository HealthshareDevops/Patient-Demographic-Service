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
:r .\PostDeployments\TitleSeed.PostDeployment.sql
:r .\PostDeployments\SuffixSeed.PostDeployment.sql
:r .\PostDeployments\NameSourceSeed.PostDeployment.sql
:r .\PostDeployments\BirthDateSourceSeed.PostDeployment.sql
:r .\PostDeployments\GenderSeed.PostDeployment.sql
:r .\PostDeployments\EthnicitySeed.PostDeployment.sql
:r .\PostDeployments\AddressTypeSeed.PostDeployment.sql
:r .\PostDeployments\AddressFormatSeed.PostDeployment.sql
:r .\PostDeployments\CountrySeed.PostDeployment.sql
:r .\PostDeployments\DomicileSeed.PostDeployment.sql
:r .\PostDeployments\ContactTypeSeed.PostDeployment.sql
:r .\PostDeployments\ContactUsageSeed.PostDeployment.sql
