/**
*  Script to seed country codes into Countries table
*  source: https://www.health.govt.nz/nz-health-statistics/data-references/code-tables/common-code-tables/country-birth-code-table 
**/

IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[Countries]'))
    SET IDENTITY_INSERT [Countries] ON;
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (1, N'004', N'Djibouti', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (2, N'008', N'Afganistan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (3, N'012', N'Albania', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (4, N'016', N'Algeria', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (5, N'020', N'American Samoa', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (6, N'024', N'Andorra', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (7, N'028', N'Angola', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (8, N'030', N'Anguilla', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (9, N'031', N'Azerbaijan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (10, N'032', N'Antarctica Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (11, N'036', N'Antarctica Foreign', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (12, N'040', N'Antarctica British', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (13, N'044', N'Antarctica USA', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (14, N'048', N'Antigua and Barbuda', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (15, N'051', N'Armenia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (16, N'052', N'Argentina', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (17, N'056', N'Aruba', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (18, N'060', N'Australia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (19, N'064', N'Austria', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (20, N'068', N'Bahamas', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (21, N'070', N'Bosnia-Herzegovina', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (22, N'072', N'Bahrain', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (23, N'073', N'Africa Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (24, N'076', N'Bangladesh', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (25, N'080', N'Barbados', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (26, N'082', N'Belarus', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (27, N'084', N'Belgium', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (28, N'088', N'Belize', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (29, N'090', N'Benin', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (30, N'092', N'Bermuda', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (31, N'096', N'Bhutan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (32, N'100', N'Bolivia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (33, N'104', N'Botswana', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (34, N'108', N'Brazil', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (35, N'112', N'British Indian Ocean Territories', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (36, N'120', N'Virgin Islands, British', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (37, N'124', N'Brunei Daressalam', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (38, N'128', N'Bulgaria', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (39, N'132', N'Myanmar (Burma)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (40, N'136', N'Burundi', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (41, N'140', N'White Russia (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (42, N'144', N'Cameroon', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (43, N'148', N'Canada', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (44, N'152', N'Canton and Enderbury Islands (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (45, N'156', N'Cape Verde', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (46, N'160', N'Cayman Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (47, N'164', N'Central African Republic', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (48, N'168', N'Chad', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (49, N'172', N'Channel Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (50, N'175', N'Mayotte', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (51, N'176', N'Chile', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (52, N'180', N'China, Peoples Republic of', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (53, N'181', N'Christmas Island', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (54, N'182', N'Cocos (Keeling) Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (55, N'184', N'Colombia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (56, N'188', N'Grande Comore (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (57, N'192', N'Congo', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (58, N'196', N'Cook Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (59, N'200', N'Costa Rica', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (60, N'202', N'Croatia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (61, N'203', N'Czech Republic', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (62, N'204', N'Cuba', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (63, N'208', N'Cyprus', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (64, N'212', N'Czechoslovakia (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (65, N'220', N'Denmark', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (66, N'224', N'Dominica', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (67, N'228', N'Dominican Republic', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (68, N'230', N'East Timor', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (69, N'232', N'Ecuador', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (70, N'233', N'Estonia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (71, N'236', N'Egypt', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (72, N'237', N'Eritrea', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (73, N'239', N'South Georgia and the South Sandwich Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (74, N'240', N'El Salvador', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (75, N'242', N'Born at sea', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (76, N'244', N'England', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (77, N'248', N'Equatorial Guinea', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (78, N'252', N'Estonia (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (79, N'256', N'Ethiopia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (80, N'260', N'Faeroe Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (81, N'264', N'Falkland Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (82, N'268', N'Fiji', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (83, N'272', N'Finland', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (84, N'276', N'France', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (85, N'280', N'French Guiana', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (86, N'284', N'French Polynesia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (87, N'286', N'French Southern Territories', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (88, N'288', N'Gabon', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (89, N'292', N'Gambia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (90, N'294', N'Georgia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (91, N'296', N'East Germany (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (92, N'300', N'Germany', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (93, N'304', N'Ghana', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (94, N'308', N'Gibraltar', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (95, N'312', N'Kiribati', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (96, N'316', N'Greece', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (97, N'320', N'Greenland', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (98, N'321', N'Serbia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (99, N'322', N'Republic of Kosovo', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (100, N'324', N'Grenada', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (101, N'328', N'Guadeloupe', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (102, N'332', N'Guam', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (103, N'336', N'Guatemala', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (104, N'340', N'Guinea', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (105, N'344', N'Guinea Bissau', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (106, N'348', N'Guyana', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (107, N'352', N'Haiti', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (108, N'356', N'Honduras', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (109, N'360', N'Hong Kong', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (110, N'364', N'Hungary', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (111, N'368', N'Iceland', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (112, N'372', N'India', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (113, N'376', N'Indonesia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (114, N'380', N'Iran', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (115, N'384', N'Iraq', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (116, N'388', N'Republic of Ireland', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (117, N'392', N'Isle of Man', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (118, N'396', N'Israel', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (119, N'398', N'Kazakhstan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (120, N'400', N'Italy', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (121, N'404', N'Cote D''Ivoire', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (122, N'408', N'Jamaica', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (123, N'412', N'Japan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (124, N'416', N'Jordan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (125, N'417', N'Kyrgyzstan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (126, N'418', N'Cambodia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (127, N'420', N'Kenya', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (128, N'428', N'Korea, Democratic People''s republic of (North)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (129, N'432', N'Korea, Republic of (South)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (130, N'436', N'Kuwait', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (131, N'440', N'Laos', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (132, N'444', N'Latvia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (133, N'448', N'Lebanon', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (134, N'452', N'Lesotho', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (135, N'456', N'Liberia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (136, N'460', N'Libyan Arab Republic', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (137, N'464', N'Liechtenstein', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (138, N'468', N'Lithuania', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (139, N'472', N'Luxembourg', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (140, N'476', N'Macau', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (141, N'480', N'Madagascar', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (142, N'484', N'Malawi', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (143, N'488', N'Malaysia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (144, N'492', N'Maldives', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (145, N'496', N'Mali', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (146, N'498', N'Moldova', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (147, N'500', N'Malta', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (148, N'502', N'Marshall Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (149, N'504', N'Martinique', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (150, N'508', N'Mauritania', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (151, N'512', N'Mauritius', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (152, N'516', N'Mexico', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (153, N'517', N'Midway Islands (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (154, N'518', N'Micronesia, Federated States of', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (155, N'520', N'Monaco', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (156, N'524', N'Mongolia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (157, N'528', N'Montserrat', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (158, N'532', N'Morocco', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (159, N'536', N'Mozambique', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (160, N'540', N'Namibia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (161, N'544', N'Nauru', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (162, N'548', N'Nepal', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (163, N'552', N'Netherlands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (164, N'556', N'Netherlands Antilles', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (165, N'560', N'Neutral Zone (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (166, N'564', N'New Caledonia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (167, N'568', N'Vanuatu', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (168, N'572', N'New Zealand', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (169, N'576', N'Nicaragua', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (170, N'580', N'Niger', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (171, N'584', N'Nigeria', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (172, N'588', N'Niue', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (173, N'592', N'Norfolk Island', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (174, N'596', N'Northern Ireland', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (175, N'598', N'Northern Mariana Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (176, N'600', N'Norway', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (177, N'604', N'Oman', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (178, N'608', N'Federated States of Micronesia(disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (179, N'612', N'Pakistan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (180, N'614', N'Palau', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (181, N'616', N'Panama', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (182, N'624', N'Papua New Guinea', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (183, N'628', N'Paraguay', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (184, N'632', N'Peru', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (185, N'636', N'Philippines', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (186, N'640', N'Pitcairn Island', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (187, N'643', N'Russia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (188, N'644', N'Poland', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (189, N'648', N'Portugal', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (190, N'656', N'Puerto Rico', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (191, N'660', N'Qatar', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (192, N'664', N'Reunion', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (193, N'668', N'Zimbabwe', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (194, N'672', N'Romania', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (195, N'676', N'Rwanda', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (196, N'680', N'St Helena', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (197, N'684', N'St Kitts Nevis', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (198, N'688', N'St Lucia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (199, N'692', N'St Pierre Miquelon', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (200, N'696', N'St Vincent and The Grenadines', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (201, N'698', N'Samoa, Western', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (202, N'700', N'San Marino', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (203, N'703', N'Slovakia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (204, N'704', N'Sao Tome and Principe', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (205, N'708', N'Saudi Arabia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (206, N'712', N'Scotland', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (207, N'716', N'Senegal', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (208, N'720', N'Seychelles', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (209, N'724', N'Sierra Leone', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (210, N'732', N'Singapore', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (211, N'733', N'Slovenia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (212, N'734', N'Solomon Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (213, N'736', N'Somalia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (214, N'740', N'South Africa', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (215, N'744', N'Spain', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (216, N'752', N'Sri Lanka', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (217, N'756', N'Sudan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (218, N'760', N'Suriname', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (219, N'762', N'Tajikistan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (220, N'764', N'Swaziland', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (221, N'768', N'Sweden', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (222, N'772', N'Switzerland', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (223, N'776', N'Syria', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (224, N'780', N'Taiwan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (225, N'784', N'Tanzania', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (226, N'788', N'Thailand', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (227, N'792', N'Togo', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (228, N'795', N'Turkmenistan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (229, N'796', N'Tokelau', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (230, N'800', N'Tonga', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (231, N'804', N'Trinidad and Tobago', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (232, N'807', N'Macedonia, The former Yugoslav Republic of', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (233, N'808', N'Tunisia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (234, N'812', N'Turkey', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (235, N'816', N'Turks and Caicos Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (236, N'820', N'Tuvalu', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (237, N'824', N'Uganda', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (238, N'828', N'Ukraine', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (239, N'832', N'Russia (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (240, N'836', N'United Arab Emirates', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (241, N'840', N'Great Britain', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (242, N'843', N'Curacao', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (243, N'844', N'United States of America', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (244, N'846', N'United States Minor Outlying Islands', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (245, N'848', N'Uzbekistan', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (246, N'852', N'Virgin Islands, United States', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (247, N'856', N'Burkina Faso', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (248, N'860', N'Uruguay', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (249, N'864', N'Vatican City', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (250, N'868', N'Venezuela', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (251, N'872', N'Viet Nam', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (252, N'880', N'Wake Island (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (253, N'884', N'Wales', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (254, N'888', N'Wallis and Futuna Island', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (255, N'890', N'Western Sahara', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (256, N'896', N'Yemen (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (257, N'897', N'Yemen', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (258, N'900', N'Yemen (Democratic South Yemen) (disused)', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (259, N'904', N'Yugoslavia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (260, N'908', N'Zaire', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (261, N'912', N'Zambia', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (262, N'951', N'America Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (263, N'952', N'Asia Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (264, N'953', N'South East Asia Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (265, N'954', N'Europe', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (266, N'955', N'Germany Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (267, N'956', N'Ireland Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (268, N'957', N'Melanesia Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (269, N'958', N'Micronesia Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (270, N'959', N'Pacific Islands Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (271, N'960', N'Polynesia Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (272, N'961', N'South America Undefined', N'')
GO
INSERT [Countries] ([Id], [Code], [Description], [Comment]) VALUES (273, N'999', N'Not Specified', N'')
GO
IF EXISTS (SELECT * FROM [sys].[identity_columns] WHERE [name] IN (N'Id', N'Code', N'Comment', N'Description') AND [object_id] = OBJECT_ID(N'[Countries]'))
    SET IDENTITY_INSERT [Countries] OFF;
GO
