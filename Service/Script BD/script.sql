USE [master]
GO
/****** Object:  Database [Ciudad-Dolar]    Script Date: 02/07/2022 10:18:20 ******/
CREATE DATABASE FinalPrograX
go
USE FinalPrograX
GO
/****** Object:  Table [dbo].[Calculo_Cliente]    Script Date: 02/07/2022 10:18:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Calculo_Cliente](
	[id_calculo] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NULL,
	[id_rubro] [int] NULL,
	[Impuesto] [varchar](500) NULL,
	[Descripcion] [varchar](500) NULL,
	[Total] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 02/07/2022 10:18:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[CUI] [int] NULL,
	[Nombre] [varchar](500) NULL,
	[Apellido] [varchar](500) NULL,
	[Salario] [float] NULL,
	[Telefono] [int] NULL,
	[Email] [varchar](500) NULL,
	[Ciudad] [varchar](500) NULL,
	[id_Pais] [int] NULL,
	[id_rubro] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 02/07/2022 10:18:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[id_Pais] [int] IDENTITY(1,1) NOT NULL,
	[PAIS] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rubro]    Script Date: 02/07/2022 10:18:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rubro](
	[id_rubro] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](500) NULL,
	[Porcentaje] [numeric](8, 6) NULL,
	[Estado] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Calculo_Cliente] ON 

INSERT [dbo].[Calculo_Cliente] ([id_calculo], [id_cliente], [id_rubro], [Impuesto], [Descripcion], [Total]) VALUES (1, 1, 2, N'ISR', N'Calculando Impuesto ISR', 1250)
SET IDENTITY_INSERT [dbo].[Calculo_Cliente] OFF
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id_cliente], [CUI], [Nombre], [Apellido], [Salario], [Telefono], [Email], [Ciudad], [id_Pais], [id_rubro]) VALUES (1, 12345678, N'Jorge', N'Lopez', 25000, 36353230, N'jlopez@progra.com', N'Guatemala', 95, 2)
INSERT [dbo].[Clientes] ([id_cliente], [CUI], [Nombre], [Apellido], [Salario], [Telefono], [Email], [Ciudad], [id_Pais], [id_rubro]) VALUES (2, 98765432, N'Chaval', N'Pox', 35000, 25282926, N'pox@pox.com', N'Mexico', 147, 1)
INSERT [dbo].[Clientes] ([id_cliente], [CUI], [Nombre], [Apellido], [Salario], [Telefono], [Email], [Ciudad], [id_Pais], [id_rubro]) VALUES (3, 12345678, N'Rosario', N'Mendez', 4000, 25282926, N'mendez@test.com', N'Guatemala', 95, 3)
INSERT [dbo].[Clientes] ([id_cliente], [CUI], [Nombre], [Apellido], [Salario], [Telefono], [Email], [Ciudad], [id_Pais], [id_rubro]) VALUES (4, 23565895, N'Laura', N'Santana', 3500, 58695424, N'santana@test.com', N'Mexico', 147, 2)
INSERT [dbo].[Clientes] ([id_cliente], [CUI], [Nombre], [Apellido], [Salario], [Telefono], [Email], [Ciudad], [id_Pais], [id_rubro]) VALUES (5, 58595652, N'Amigui', N'Pox', 2500, 57585956, N'amigui@test.com', N'Tegucigalpa', 103, 3)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (1, N'Afganistán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (2, N'Islas Gland')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (3, N'Albania')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (4, N'Alemania')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (5, N'Andorra')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (6, N'Angola')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (7, N'Anguilla')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (8, N'Antártida')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (9, N'Antigua y Barbuda')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (10, N'Antillas Holandesas')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (11, N'Arabia Saudí')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (12, N'Argelia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (13, N'Argentina')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (14, N'Armenia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (15, N'Aruba')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (16, N'Australia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (17, N'Austria')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (18, N'Azerbaiyán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (19, N'Bahamas')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (20, N'Bahréin')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (21, N'Bangladesh')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (22, N'Barbados')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (23, N'Bielorrusia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (24, N'Bélgica')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (25, N'Belice')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (26, N'Benin')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (27, N'Bermudas')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (28, N'Bhután')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (29, N'Bolivia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (30, N'Bosnia y Herzegovina')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (31, N'Botsuana')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (32, N'Isla Bouvet')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (33, N'Brasil')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (34, N'Brunéi')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (35, N'Bulgaria')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (36, N'Burkina Faso')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (37, N'Burundi')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (38, N'Cabo Verde')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (39, N'Islas Caimán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (40, N'Camboya')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (41, N'Camerún')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (42, N'Canadá')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (43, N'República Centroafricana')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (44, N'Chad')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (45, N'República Checa')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (46, N'Chile')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (47, N'China')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (48, N'Chipre')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (49, N'Isla de Navidad')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (50, N'Ciudad del Vaticano')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (51, N'Islas Cocos')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (52, N'Colombia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (53, N'Comoras')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (54, N'República Democrática del Congo')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (55, N'Congo')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (56, N'Islas Cook')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (57, N'Corea del Norte')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (58, N'Corea del Sur')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (59, N'Costa de Marfil')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (60, N'Costa Rica')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (61, N'Croacia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (62, N'Cuba')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (63, N'Dinamarca')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (64, N'Dominica')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (65, N'República Dominicana')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (66, N'Ecuador')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (67, N'Egipto')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (68, N'El Salvador')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (69, N'Emiratos Árabes Unidos')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (70, N'Eritrea')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (71, N'Eslovaquia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (72, N'Eslovenia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (73, N'España')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (74, N'Islas ultramarinas de Estados Unidos')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (75, N'Estados Unidos')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (76, N'Estonia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (77, N'Etiopía')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (78, N'Inglaterra')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (79, N'Islas Feroe')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (80, N'Filipinas')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (81, N'Finlandia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (82, N'Fiyi')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (83, N'Francia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (84, N'Gabón')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (85, N'Gambia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (86, N'Georgia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (87, N'Islas Georgias del Sur y Sandwich del Sur')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (88, N'Ghana')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (89, N'Gibraltar')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (90, N'Granada')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (91, N'Grecia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (92, N'Groenlandia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (93, N'Guadalupe')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (94, N'Guam')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (95, N'Guatemala')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (96, N'Guayana Francesa')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (97, N'Guinea')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (98, N'Guinea Ecuatorial')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (99, N'Guinea-Bissau')
GO
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (100, N'Guyana')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (101, N'Haití')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (102, N'Islas Heard y McDonald')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (103, N'Honduras')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (104, N'Hong Kong')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (105, N'Hungría')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (106, N'India')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (107, N'Indonesia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (108, N'Irán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (109, N'Iraq')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (110, N'Irlanda')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (111, N'Islandia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (112, N'Israel')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (113, N'Italia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (114, N'Jamaica')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (115, N'Japón')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (116, N'Jordania')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (117, N'Kazajstán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (118, N'Kenia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (119, N'Kirguistán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (120, N'Kiribati')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (121, N'Kuwait')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (122, N'Laos')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (123, N'Lesotho')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (124, N'Letonia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (125, N'Líbano')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (126, N'Liberia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (127, N'Libia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (128, N'Liechtenstein')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (129, N'Lituania')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (130, N'Luxemburgo')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (131, N'Macao')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (132, N'ARY Macedonia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (133, N'Madagascar')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (134, N'Malasia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (135, N'Malawi')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (136, N'Maldivas')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (137, N'Malí')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (138, N'Malta')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (139, N'Islas Malvinas')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (140, N'Islas Marianas del Norte')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (141, N'Marruecos')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (142, N'Islas Marshall')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (143, N'Martinica')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (144, N'Mauricio')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (145, N'Mauritania')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (146, N'Mayotte')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (147, N'México')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (148, N'Micronesia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (149, N'Moldavia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (150, N'Mónaco')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (151, N'Mongolia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (152, N'Montserrat')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (153, N'Mozambique')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (154, N'Myanmar')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (155, N'Namibia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (156, N'Nauru')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (157, N'Nepal')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (158, N'Nicaragua')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (159, N'Níger')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (160, N'Nigeria')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (161, N'Niue')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (162, N'Isla Norfolk')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (163, N'Noruega')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (164, N'Nueva Caledonia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (165, N'Nueva Zelanda')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (166, N'Omán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (167, N'Países Bajos')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (168, N'Pakistán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (169, N'Palau')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (170, N'Palestina')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (171, N'Panamá')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (172, N'Papúa Nueva Guinea')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (173, N'Paraguay')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (174, N'Perú')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (175, N'Islas Pitcairn')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (176, N'Polinesia Francesa')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (177, N'Polonia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (178, N'Portugal')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (179, N'Puerto Rico')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (180, N'Qatar')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (181, N'Reunión')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (182, N'Ruanda')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (183, N'Rumania')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (184, N'Rusia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (185, N'Sahara Occidental')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (186, N'Islas Salomón')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (187, N'Samoa')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (188, N'Samoa Americana')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (189, N'San Cristóbal y Nevis')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (190, N'San Marino')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (191, N'San Pedro y Miquelón')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (192, N'San Vicente y las Granadinas')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (193, N'Santa Helena')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (194, N'Santa Lucía')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (195, N'Santo Tomé y Príncipe')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (196, N'Senegal')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (197, N'Serbia y Montenegro')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (198, N'Seychelles')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (199, N'Sierra Leona')
GO
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (200, N'Singapur')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (201, N'Siria')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (202, N'Somalia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (203, N'Sri Lanka')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (204, N'Suazilandia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (205, N'Sudáfrica')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (206, N'Sudán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (207, N'Suecia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (208, N'Suiza')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (209, N'Surinam')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (210, N'Svalbard y Jan Mayen')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (211, N'Tailandia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (212, N'Taiwán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (213, N'Tanzania')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (214, N'Tayikistán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (215, N'Territorio Británico del Océano Índico')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (216, N'Territorios Australes Franceses')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (217, N'Timor Oriental')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (218, N'Togo')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (219, N'Tokelau')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (220, N'Tonga')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (221, N'Trinidad y Tobago')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (222, N'Túnez')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (223, N'Islas Turcas y Caicos')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (224, N'Turkmenistán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (225, N'Turquía')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (226, N'Tuvalu')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (227, N'Ucrania')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (228, N'Uganda')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (229, N'Uruguay')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (230, N'Uzbekistán')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (231, N'Vanuatu')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (232, N'Venezuela')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (233, N'Vietnam')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (234, N'Islas Vírgenes Británicas')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (235, N'Islas Vírgenes de los Estados Unidos')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (236, N'Wallis y Futuna')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (237, N'Yemen')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (238, N'Yibuti')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (239, N'Zambia')
INSERT [dbo].[Pais] ([id_Pais], [PAIS]) VALUES (240, N'Zimbabue')
SET IDENTITY_INSERT [dbo].[Pais] OFF
SET IDENTITY_INSERT [dbo].[Rubro] ON 

INSERT [dbo].[Rubro] ([id_rubro], [Nombre], [Porcentaje], [Estado]) VALUES (1, N'Gastos', CAST(0.050000 AS Numeric(8, 6)), 1)
INSERT [dbo].[Rubro] ([id_rubro], [Nombre], [Porcentaje], [Estado]) VALUES (2, N'Publicidad', CAST(0.100000 AS Numeric(8, 6)), 1)
INSERT [dbo].[Rubro] ([id_rubro], [Nombre], [Porcentaje], [Estado]) VALUES (3, N'Caja Chica', CAST(0.850000 AS Numeric(8, 6)), 1)
SET IDENTITY_INSERT [dbo].[Rubro] OFF
/****** Object:  Index [PK3]    Script Date: 02/07/2022 10:18:22 ******/
ALTER TABLE [dbo].[Calculo_Cliente] ADD  CONSTRAINT [PK3] PRIMARY KEY NONCLUSTERED 
(
	[id_calculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK1]    Script Date: 02/07/2022 10:18:22 ******/
ALTER TABLE [dbo].[Clientes] ADD  CONSTRAINT [PK1] PRIMARY KEY NONCLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK4]    Script Date: 02/07/2022 10:18:22 ******/
ALTER TABLE [dbo].[Pais] ADD  CONSTRAINT [PK4] PRIMARY KEY NONCLUSTERED 
(
	[id_Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK2]    Script Date: 02/07/2022 10:18:22 ******/
ALTER TABLE [dbo].[Rubro] ADD  CONSTRAINT [PK2] PRIMARY KEY NONCLUSTERED 
(
	[id_rubro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Calculo_Cliente]  WITH CHECK ADD  CONSTRAINT [Refcliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Calculo_Cliente] CHECK CONSTRAINT [Refcliente]
GO
ALTER TABLE [dbo].[Calculo_Cliente]  WITH CHECK ADD  CONSTRAINT [Refrubrocalculo] FOREIGN KEY([id_rubro])
REFERENCES [dbo].[Rubro] ([id_rubro])
GO
ALTER TABLE [dbo].[Calculo_Cliente] CHECK CONSTRAINT [Refrubrocalculo]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [Refpais] FOREIGN KEY([id_Pais])
REFERENCES [dbo].[Pais] ([id_Pais])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [Refpais]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [Refrubro] FOREIGN KEY([id_rubro])
REFERENCES [dbo].[Rubro] ([id_rubro])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [Refrubro]
GO

