USE [NorthWindAzure3]
GO
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_Customers_Countries]
GO
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_Customers_ContactType]
GO
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [FK_Customers_Contact]
GO
ALTER TABLE [dbo].[ContactDetails] DROP CONSTRAINT [FK_ContactDetails_Countries]
GO
ALTER TABLE [dbo].[ContactDetails] DROP CONSTRAINT [FK_ContactDetails_ContactType]
GO
ALTER TABLE [dbo].[ContactDetails] DROP CONSTRAINT [FK_ContactDetails_Contact]
GO
ALTER TABLE [dbo].[ContactContactDevices] DROP CONSTRAINT [FK_ContactContactDevices_PhoneType]
GO
ALTER TABLE [dbo].[ContactContactDevices] DROP CONSTRAINT [FK_ContactContactDevices_Contact]
GO
ALTER TABLE [dbo].[CompanyAddress] DROP CONSTRAINT [FK_CompanyAddress_Customers]
GO
ALTER TABLE [dbo].[CompanyAddress] DROP CONSTRAINT [FK_CompanyAddress_Countries]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 1/27/2019 5:01:55 AM ******/
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 1/27/2019 5:01:55 AM ******/
DROP TABLE [dbo].[Countries]
GO
/****** Object:  Table [dbo].[ContactType]    Script Date: 1/27/2019 5:01:55 AM ******/
DROP TABLE [dbo].[ContactType]
GO
/****** Object:  Table [dbo].[ContactDetails]    Script Date: 1/27/2019 5:01:55 AM ******/
DROP TABLE [dbo].[ContactDetails]
GO
/****** Object:  Table [dbo].[ContactContactDevices]    Script Date: 1/27/2019 5:01:55 AM ******/
DROP TABLE [dbo].[ContactContactDevices]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 1/27/2019 5:01:55 AM ******/
DROP TABLE [dbo].[Contact]
GO
/****** Object:  Table [dbo].[CompanyAddress]    Script Date: 1/27/2019 5:01:55 AM ******/
DROP TABLE [dbo].[CompanyAddress]
GO
/****** Object:  Table [dbo].[CompanyAddress]    Script Date: 1/27/2019 5:01:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyAddress](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerIdentifier] [int] NULL,
	[Street] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Province] [nvarchar](max) NULL,
	[PostalCode] [nchar](10) NULL,
	[CountryIdentfier] [int] NULL,
 CONSTRAINT [PK_CompanyAddress] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 1/27/2019 5:01:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactIdentifier] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactIdentifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactContactDevices]    Script Date: 1/27/2019 5:01:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactContactDevices](
	[Identifier] [int] IDENTITY(1,1) NOT NULL,
	[ContactIdentifier] [int] NULL,
	[PhoneTypeIdenitfier] [int] NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_ContactContactDevices] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactDetails]    Script Date: 1/27/2019 5:01:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ContactIdentifier] [int] NULL,
	[Street] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Province] [nvarchar](max) NULL,
	[PostalCode] [nchar](10) NULL,
	[CountryIdentfier] [int] NULL,
	[ContactTypeIdentifier] [int] NULL,
 CONSTRAINT [PK_ContactDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactType]    Script Date: 1/27/2019 5:01:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactType](
	[ContactTypeIdentifier] [int] IDENTITY(1,1) NOT NULL,
	[ContactTitle] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContactType] PRIMARY KEY CLUSTERED 
(
	[ContactTypeIdentifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 1/27/2019 5:01:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 1/27/2019 5:01:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerIdentifier] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactIdentifier] [int] NULL,
	[ContactTypeIdentifier] [int] NULL,
	[Street] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[CountryIdentfier] [int] NULL,
	[Phone] [nvarchar](24) NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Customers_1] PRIMARY KEY CLUSTERED 
(
	[CustomerIdentifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (2, N'Ana', N'Trujillo')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (3, N'Antonio', N'Moreno')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (4, N'Thomas', N'Hardy')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (5, N'Christina', N'Berglund')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (6, N'Hanna', N'Moos')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (7, N'Frédérique', N'Citeaux')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (8, N'Martín', N'Sommer')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (9, N'Laurence', N'Lebihan')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (11, N'Patricio', N'Simpson')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (12, N'Francisco', N'Chang')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (14, N'Elizabeth', N'Brown')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (15, N'Sven', N'Ottlieb')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (16, N'Janine', N'Labrune')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (17, N'Ann', N'Devon')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (18, N'Roland', N'Mendel')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (19, N'Diego', N'Roel')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (20, N'Martine', N'Rancé')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (21, N'Maria', N'Larsson')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (22, N'Peter', N'Franken')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (23, N'Carine', N'Schmitt')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (24, N'Paolo', N'Accorti')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (25, N'Lino', N'Rodriguez')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (26, N'Eduardo', N'Saavedra')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (27, N'José', N'Pedro Freyre')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (28, N'Philip', N'Cramer')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (29, N'Daniel', N'Tonini')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (30, N'Annette', N'Roulet')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (31, N'Renate', N'Messner')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (32, N'Giovanni', N'Rovelli')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (33, N'Catherine', N'Dewey')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (34, N'Alexander', N'Feuer')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (35, N'Simon', N'Crowther')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (36, N'Yvonne', N'Moncada')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (37, N'Henriette', N'Pfalzheim')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (38, N'Marie', N'Bertrand')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (39, N'Guillermo', N'Fernández')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (40, N'Georg', N'Pipps')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (41, N'Isabel', N'de Castro')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (42, N'Horst', N'Kloss')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (43, N'Sergio', N'Gutiérrez')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (44, N'Maurizio', N'Moroni')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (45, N'Michael', N'Holz')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (46, N'Alejandra', N'Camino')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (47, N'Jonas', N'Bergulfsen')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (48, N'Hari', N'Kumar')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (49, N'Jytte', N'Petersen')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (50, N'Dominique', N'Perrier')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (51, N'Pascale', N'Cartrain')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (52, N'Karin', N'Josephs')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (53, N'Miguel Angel', N'Paolino')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (54, N'Palle', N'Ibsen')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (55, N'Mary', N'Saveley')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (56, N'Paul', N'Henriot')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (57, N'Rita', N'Müller')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (58, N'Pirkko', N'Koskitalo')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (60, N'Zbyszek', N'Piestrzeniewicz')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (61, N'Rene', N'Phillips')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (62, N'Elizabeth', N'Lincoln')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (63, N'Yoshi', N'Tannamuri')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (64, N'Jaime', N'Yorres')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (65, N'Patricia', N'McKenna')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (66, N'Manuel', N'Pereira')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (67, N'Jose', N'Pavarotti')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (68, N'Helen', N'Bennett')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (69, N'Carlos', N'González')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (70, N'Liu', N'Wong')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (71, N'Paula', N'Wilson')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (72, N'Felipe', N'Izquierdo')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (73, N'Howard', N'Snyder')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (74, N'Yoshi', N'Latimer')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (75, N'Fran', N'Wilson')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (76, N'Liz', N'Nixon')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (77, N'Jean', N'Fresnière')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (78, N'Mario', N'Pontes')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (79, N'Bernardo', N'Batista')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (80, N'Janete', N'Limeira')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (81, N'Pedro', N'Afonso')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (82, N'Aria', N'Cruz')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (83, N'André', N'Fonseca')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (84, N'Lúcia', N'Carvalho')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (85, N'Anabela', N'Domingues')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (86, N'Paula', N'Parente')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (87, N'Carlos', N'Hernández')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (88, N'John', N'Steel')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (89, N'Helvetius', N'Nagy')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (90, N'Karl', N'Jablonski')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (91, N'Art', N'Braunschweiger')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (92, N'Marc', N'Arias')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (93, N'Dylan', N'Preston')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (94, N'Maureen', N'Cherry')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (95, N'Kathryn', N'Atkins')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (96, N'Bobbie', N'Everett')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (97, N'Shawn', N'Cross')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (98, N'Meghan', N'Bartlett')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (99, N'Kelley', N'Mays')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (100, N'Randall', N'Yu')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (101, N'Marvin', N'Kirk')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (102, N'Karen', N'Payne')
INSERT [dbo].[Contact] ([ContactIdentifier], [FirstName], [LastName]) VALUES (103, N'Maria', N'Anders')
GO
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[ContactContactDevices] ON 

INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (3, 2, 3, N'(5) 555-4729', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (4, 3, 3, N'(5) 555-3932', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (5, 4, 3, N'(171) 555-7788', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (6, 5, 3, N'0921-12 34 65', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (7, 6, 3, N'0621-08460', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (8, 7, 3, N'88.60.15.31', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (9, 8, 3, N'(91) 555 22 82', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (10, 9, 3, N'91.24.45.40', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (12, 11, 3, N'(1) 135-5555', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (13, 12, 3, N'(5) 555-3392', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (15, 14, 3, N'(171) 555-2282', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (16, 15, 3, N'0241-039123', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (17, 16, 3, N'40.67.88.88', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (18, 17, 3, N'(171) 555-0297', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (19, 18, 3, N'7675-3425', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (20, 19, 3, N'(91) 555 94 44', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (21, 20, 3, N'20.16.10.16', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (22, 21, 3, N'0695-34 67 21', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (23, 22, 3, N'089-0877310', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (24, 23, 3, N'40.32.21.21', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (25, 24, 3, N'011-4988260', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (26, 25, 3, N'(1) 354-2534', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (27, 26, 3, N'(93) 203 4560', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (28, 27, 3, N'(95) 555 82 82', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (29, 28, 3, N'0555-09876', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (30, 29, 3, N'30.59.84.10', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (31, 30, 3, N'61.77.61.10', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (32, 31, 3, N'069-0245984', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (33, 32, 3, N'035-640230', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (34, 33, 3, N'(02) 201 24 67', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (35, 34, 3, N'0342-023176', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (36, 35, 3, N'(171) 555-7733', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (37, 36, 3, N'(1) 135-5333', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (38, 37, 3, N'0221-0644327', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (39, 38, 3, N'(1) 42.34.22.66', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (40, 39, 3, N'(5) 552-3745', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (41, 40, 3, N'6562-9722', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (42, 41, 3, N'(1) 356-5634', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (43, 42, 3, N'0372-035188', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (44, 43, 3, N'(1) 123-5555', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (45, 44, 3, N'0522-556721', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (46, 45, 3, N'0897-034214', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (47, 46, 3, N'(91) 745 6200', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (48, 47, 3, N'07-98 92 35', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (49, 48, 3, N'(171) 555-1717', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (50, 49, 3, N'31 12 34 56', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (51, 50, 3, N'(1) 47.55.60.10', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (52, 51, 3, N'(071) 23 67 22 20', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (53, 52, 3, N'0251-031259', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (54, 53, 3, N'(5) 555-2933', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (55, 54, 3, N'86 21 32 43', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (56, 55, 3, N'78.32.54.86', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (57, 56, 3, N'26.47.15.10', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (58, 57, 3, N'0711-020361', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (59, 58, 3, N'981-443655', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (61, 60, 3, N'(26) 642-7012', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (62, 61, 3, N'(907) 555-7584', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (63, 62, 3, N'(604) 555-4729', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (64, 63, 3, N'(604) 555-3392', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (65, 64, 3, N'(415) 555-5938', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (66, 65, 3, N'2967 542', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (67, 66, 3, N'(2) 283-2951', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (68, 67, 3, N'(208) 555-8097', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (69, 68, 3, N'(198) 555-8888', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (70, 69, 3, N'(9) 331-6954', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (71, 70, 3, N'(406) 555-5834', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (72, 71, 3, N'(505) 555-5939', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (73, 72, 3, N'(8) 34-56-12', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (74, 73, 3, N'(503) 555-7555', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (75, 74, 3, N'(503) 555-6874', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (76, 75, 3, N'(503) 555-9573', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (77, 76, 3, N'(503) 555-3612', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (78, 77, 3, N'(514) 555-8054', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (79, 78, 3, N'(21) 555-0091', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (80, 79, 3, N'(21) 555-4252', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (81, 80, 3, N'(21) 555-3412', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (82, 81, 3, N'(11) 555-7647', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (83, 82, 3, N'(11) 555-9857', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (84, 83, 3, N'(11) 555-9482', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (85, 84, 3, N'(11) 555-1189', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (86, 85, 3, N'(11) 555-2167', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (87, 86, 3, N'(14) 555-8122', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (88, 87, 3, N'(5) 555-1340', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (89, 88, 3, N'(509) 555-7969', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (90, 90, 3, N'(206) 555-8257', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (91, 91, 3, N'(206) 555-4112', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (92, 92, 3, N'(307) 555-4680', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (93, 93, 3, N'569960-0988', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (94, 94, 3, N'5504500025', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (95, 95, 3, N'782-3374387', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (96, 94, 3, N'270-8090642', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (97, 97, 3, N'8342771728', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (98, 98, 3, N'172-309-7838', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (99, 99, 3, N'795080-4930', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (100, 100, 3, N'070-3408303', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (101, 101, 3, N'349-1262614', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (102, 101, 2, N'349-1262444', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (103, 102, 3, N'444-897-1287', 1)
INSERT [dbo].[ContactContactDevices] ([Identifier], [ContactIdentifier], [PhoneTypeIdenitfier], [PhoneNumber], [Active]) VALUES (104, 103, 3, N'030-0074321', 1)
GO
SET IDENTITY_INSERT [dbo].[ContactContactDevices] OFF
SET IDENTITY_INSERT [dbo].[ContactType] ON 

INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (1, N'Accounting Manager')
INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (2, N'Assistant Sales Agent')
INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (3, N'Assistant Sales Representative')
INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (4, N'Marketing Assistant')
INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (5, N'Marketing Manager')
INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (6, N'Order Administrator')
INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (7, N'Owner')
INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (8, N'Owner/Marketing Assistant')
INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (9, N'Sales Agent')
INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (10, N'Sales Associate')
INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (11, N'Sales Manager')
INSERT [dbo].[ContactType] ([ContactTypeIdentifier], [ContactTitle]) VALUES (12, N'Sales Representative')
SET IDENTITY_INSERT [dbo].[ContactType] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (1, N'Argentina')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (2, N'Austria')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (3, N'Belgium')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (4, N'Brazil')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (5, N'Canada')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (6, N'Denmark')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (7, N'Finland')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (8, N'France')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (9, N'Germany')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (10, N'Ireland')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (11, N'Italy')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (12, N'Mexico')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (13, N'Norway')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (14, N'Poland')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (15, N'Portugal')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (16, N'Spain')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (17, N'Sweden')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (18, N'Switzerland')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (19, N'UK')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (20, N'USA')
INSERT [dbo].[Countries] ([id], [CountryName]) VALUES (21, N'Venezuela')
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (2, N'Ana Trujillo Emparedados y helados', 2, 7, N'Avda. de la Constitución 2222', N'México D.F.', N'05022', 12, N'(5) 555-4729', CAST(N'2018-11-04 01:30:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (3, N'Antonio Moreno Taquería', 3, 7, N'Mataderos  2312', N'México D.F.', N'05023', 12, N'(5) 555-3932', CAST(N'2018-07-04 13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (4, N'Around the Horn', 4, 12, N'120 Hanover Sq.', N'London', N'WA1 1DP', 19, N'(171) 555-7788', CAST(N'2018-07-04 13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (5, N'Berglunds snabbköp', 5, 6, N'Berguvsvägen  8', N'Luleå', N'S-958 22', 17, N'0921-12 34 65', CAST(N'2018-07-04 13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (6, N'Blauer See Delikatessen', 6, 12, N'Forsterstr. 57', N'Mannheim', N'68306', 9, N'0621-08460', CAST(N'2018-07-04 13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (7, N'Blondesddsl père et fils', 7, 5, N'24, place Kléber', N'Strasbourg', N'67000', 8, N'88.60.15.31', CAST(N'2018-07-04 13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (8, N'Bólido Comidas preparadas', 8, 7, N'C/ Araquil, 67', N'Madrid', N'28023', 16, N'(91) 555 22 82', CAST(N'2018-07-04 13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (11, N'Cactus Comidas para llevar', 11, 9, N'Cerrito 333', N'Buenos Aires', N'1010', 1, N'(1) 135-5555', CAST(N'2018-07-04 13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (12, N'Centro comercial Moctezuma', 12, 5, N'Sierras de Granada 9993', N'México D.F.', N'05022', 12, N'(5) 555-3392', CAST(N'2018-07-04 13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (14, N'Consolidated Holdings', 14, 12, N'Berkeley Gardens 12  Brewery', N'London', N'WX1 6LT', 19, N'(171) 555-2282', CAST(N'2018-07-04 13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (15, N'Drachenblut Delikatessen', 15, 6, N'Walserweg 21', N'Aachen', N'52066', 9, N'0241-039123', CAST(N'2018-07-04 13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (16, N'Du monde entier', 16, 7, N'67, rue des Cinquante Otages', N'Nantes', N'44000', 8, N'40.67.88.88', CAST(N'2018-07-04 13:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (17, N'Eastern Connection', 17, 9, N'35 King George', N'London', N'WX3 6FW', 19, N'(171) 555-0297', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (18, N'Ernst Handel', 18, 11, N'Kirchgasse 6', N'Graz', N'8010', 2, N'7675-3425', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (19, N'FISSA Fabrica Inter. Salchichas S.A.', 19, 1, N'C/ Moralzarzal, 86', N'Madrid', N'28034', 16, N'(91) 555 94 44', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (20, N'Folies gourmandes', 20, 2, N'184, chaussée de Tournai', N'Lille', N'59000', 8, N'20.16.10.16', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (21, N'Folk och fä HB', 21, 7, N'Åkergatan 24', N'Bräcke', N'S-844 67', 17, N'0695-34 67 21', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (22, N'Frankenversand', 22, 5, N'Berliner Platz 43', N'München', N'80805', 9, N'089-0877310', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (23, N'France restauration', 23, 5, N'54, rue Royale', N'Nantes', N'44000', 8, N'40.32.21.21', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (24, N'Franchi S.p.A.', 24, 12, N'Via Monte Bianco 34', N'Torino', N'10100', 11, N'011-4988260', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (25, N'Furia Bacalhau e Frutos do Mar', 25, 11, N'Jardim das rosas n. 32', N'Lisboa', N'1675', 15, N'(1) 354-2534', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (26, N'Galería del gastrónomo', 26, 5, N'Rambla de Cataluña, 23', N'Barcelona', N'08022', 16, N'(93) 203 4560', CAST(N'2017-06-04 05:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (27, N'Godos Cocina Típica', 27, 11, N'C/ Romero, 33', N'Sevilla', N'41101', 16, N'(95) 555 82 82', CAST(N'2017-06-04 05:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (28, N'Königlich Essen', 28, 10, N'Maubelstr. 90', N'Brandenburg', N'14776', 9, N'0555-09876', CAST(N'2017-06-04 05:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (29, N'La corne d''abondance', 29, 12, N'67, avenue de l''Europe', N'Versailles', N'78000', 8, N'30.59.84.10', CAST(N'2017-06-04 05:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (30, N'La maison d''Asie', 30, 11, N'1 rue Alsace-Lorraine', N'Toulouse', N'31000', 8, N'61.77.61.10', CAST(N'2017-06-04 05:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (31, N'Lehmanns Marktstand', 31, 12, N'Magazinweg 7', N'Frankfurt a.M.', N'60528', 9, N'069-0245984', CAST(N'2017-06-04 05:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (32, N'Magazzini Alimentari Riuniti', 32, 5, N'Via Ludovico il Moro 22', N'Bergamo', N'24100', 11, N'035-640230', CAST(N'2017-06-04 05:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (33, N'Maison Dewey', 33, 9, N'Rue Joseph-Bens 532', N'Bruxelles', N'B-1180', 3, N'(02) 201 24 67', CAST(N'2017-06-04 05:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (34, N'Morgenstern Gesundkost', 34, 4, N'Heerstr. 22', N'Leipzig', N'04179', 9, N'0342-023176', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (35, N'North/South', 35, 10, N'South House 300 Queensbridge', N'London', N'SW7 1RZ', 19, N'(171) 555-7733', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (36, N'Océano Atlántico Ltda.', 36, 9, N'Ing. Gustavo Moncada 8585 Piso 20-A', N'Buenos Aires', N'1010', 1, N'(1) 135-5333', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (37, N'Ottilies Käseladen', 37, 7, N'Mehrheimerstr. 369', N'Köln', N'50739', 9, N'0221-0644327', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (38, N'Paris spécialités', 38, 7, N'265, boulevard Charonne', N'Paris', N'75012', 8, N'(1) 42.34.22.66', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (39, N'Pericles Comidas clásicas', 39, 12, N'Calle Dr. Jorge Cash 321', N'México D.F.', N'05033', 12, N'(5) 552-3745', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (40, N'Piccolo und mehr', 40, 11, N'Geislweg 14', N'Salzburg', N'5020', 2, N'6562-9722', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (41, N'Princesa Isabel Vinhos', 41, 12, N'Estrada da saúde n. 58', N'Lisboa', N'1756', 15, N'(1) 356-5634', CAST(N'2018-08-04 16:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (42, N'QUICK Stop', 42, 1, N'Taucherstraße 10', N'Cunewalde', N'01307', 9, N'0372-035188', CAST(N'2018-01-11 04:07:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (43, N'Rancho grande', 43, 12, N'Av. del Libertador 900', N'Buenos Aires', N'1010', 1, N'(1) 123-5555', CAST(N'2018-01-11 04:07:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (44, N'Reggiani Caseifici', 44, 10, N'Strada Provinciale 124', N'Reggio Emilia', N'42100', 11, N'0522-556721', CAST(N'2018-01-11 04:07:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (45, N'Richter Supermarkt', 45, 11, N'Grenzacherweg 237', N'Genève', N'1203', 18, N'0897-034214', CAST(N'2018-01-11 04:07:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (46, N'Romero y tomillo', 46, 1, N'Gran Vía, 1', N'Madrid', N'28001', 16, N'(91) 745 6200', CAST(N'2018-01-11 04:07:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (47, N'Santé Gourmet', 47, 7, N'Erling Skakkes gate 78', N'Stavern', N'4110', 13, N'07-98 92 35', CAST(N'2018-01-11 04:07:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (48, N'Seven Seas Imports', 48, 11, N'90 Wadhurst Rd.', N'London', N'OX15 4NB', 19, N'(171) 555-1717', CAST(N'2018-01-11 04:07:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (49, N'Simons bistro', 49, 7, N'Vinbæltet 34', N'Kobenhavn', N'1734', 6, N'31 12 34 56', CAST(N'2018-01-11 04:07:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (50, N'Spécialités du monde', 50, 5, N'25, rue Lauriston', N'Paris', N'75016', 8, N'(1) 47.55.60.10', CAST(N'2018-09-11 09:11:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (51, N'Suprêmes délices', 51, 1, N'Boulevard Tirou, 255', N'Charleroi', N'B-6000', 3, N'(071) 23 67 22 20', CAST(N'2018-09-11 09:11:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (52, N'Toms Spezialitäten', 52, 5, N'Luisenstr. 48', N'Münster', N'44087', 9, N'0251-031259', CAST(N'2018-09-11 09:11:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (53, N'Tortuga Restaurante', 53, 7, N'Avda. Azteca 123', N'México D.F.', N'05033', 12, N'(5) 555-2933', CAST(N'2018-09-11 09:11:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (54, N'Vaffeljernet', 54, 11, N'Smagsloget 45', N'Århus', N'8200', 6, N'86 21 32 43', CAST(N'2018-09-11 09:11:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (55, N'Victuailles en stock', 55, 9, N'2, rue du Commerce', N'Lyon', N'69004', 8, N'78.32.54.86', CAST(N'2018-09-11 09:11:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (56, N'Vins et alcools Chevalier', 56, 1, N'59 rue de l''Abbaye', N'Reims', N'51100', 8, N'26.47.15.10', CAST(N'2018-09-11 09:11:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (57, N'Die Wandernde Kuh', 57, 12, N'Adenauerallee 900', N'Stuttgart', N'70563', 9, N'0711-020361', CAST(N'2017-02-11 06:55:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (58, N'Wartian Herkku', 58, 1, N'Torikatu 38', N'Oulu', N'90110', 7, N'981-443655', CAST(N'2017-02-11 06:55:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (60, N'Wolski  Zajazd', 60, 7, N'ul. Filtrowa 68', N'Warszawa', N'01-012', 14, N'(26) 642-7012', CAST(N'2017-02-11 06:55:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (61, N'Old World Delicatessen', 61, 12, N'2743 Bering St.', N'Anchorage', N'99508', 20, N'(907) 555-7584', CAST(N'2017-02-11 06:55:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (62, N'Bottom-Dollar Markets', 62, 1, N'23 Tsawassen Blvd.', N'Tsawassen', N'T2F 8M4', 5, N'(604) 555-4729', CAST(N'2016-02-03 09:35:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (63, N'Laughing Bacchus Wine Cellars', 63, 4, N'1900 Oak St.', N'Vancouver', N'V3F 2K1', 5, N'(604) 555-3392', CAST(N'2016-02-03 09:35:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (64, N'Let''s Stop N Shop', 64, 7, N'87 Polk St. Suite 5', N'San Francisco', N'94117', 20, N'(415) 555-5938', CAST(N'2016-02-03 09:35:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (65, N'Hungry Owl All-Night Grocers', 65, 10, N'8 Johnstown Road', N'Cork', NULL, 10, N'2967 542', CAST(N'2016-02-03 09:35:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (66, N'GROSELLA-Restaurante', 66, 7, N'5ª Ave. Los Palos Grandes', N'Caracas', N'1081', 21, N'(2) 283-2951', CAST(N'2016-02-03 09:35:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (67, N'Save-a-lot Markets', 67, 12, N'187 Suffolk Ln.', N'Boise', N'83720', 20, N'(208) 555-8097', CAST(N'2016-02-03 09:35:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (68, N'Island Trading', 68, 5, N'Garden House Crowther Way', N'Cowes', N'PO31 7PJ', 19, N'(198) 555-8888', CAST(N'2016-02-03 09:35:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (69, N'LILA-Supermercado', 69, 1, N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', N'Barquisimeto', N'3508', 21, N'(9) 331-6954', CAST(N'2016-02-03 09:35:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (70, N'The Cracker Box', 70, 4, N'55 Grizzly Peak Rd.', N'Butte', N'59801', 20, N'(406) 555-5834', CAST(N'2016-02-03 09:35:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (71, N'Rattlesnake Canyon Grocery', 71, 3, N'2817 Milton Dr.', N'Albuquerque', N'87110', 20, N'(505) 555-5939', CAST(N'2016-02-03 09:35:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (72, N'LINO-Delicateses', 72, 7, N'Ave. 5 de Mayo Porlamar', N'I. de Margarita', N'4980', 21, N'(8) 34-56-12', CAST(N'2018-07-03 04:22:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (73, N'Great Lakes Food Market', 73, 5, N'2732 Baker Blvd.', N'Eugene', N'97403', 20, N'(503) 555-7555', CAST(N'2018-07-03 04:22:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (74, N'Hungry Coyote Import Store', 74, 12, N'City Center Plaza 516 Main St.', N'Elgin', N'97827', 20, N'(503) 555-6874', CAST(N'2018-07-03 04:22:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (75, N'Lonesome Pine Restaurant', 75, 11, N'89 Chiaroscuro Rd.', N'Portland', N'97219', 20, N'(503) 555-9573', CAST(N'2018-07-03 04:22:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (76, N'The Big Cheese', 76, 5, N'89 Jefferson Way Suite 2', N'Portland', N'97201', 20, N'(503) 555-3612', CAST(N'2018-07-03 04:22:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (77, N'Mère Paillarde', 77, 4, N'43 rue St. Laurent', N'Montréal', N'H1J 1C3', 5, N'(514) 555-8054', CAST(N'2018-07-03 04:22:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (78, N'Hanari Carnes', 78, 1, N'Rua do Paço, 67', N'Rio de Janeiro', N'05454-876', 4, N'(21) 555-0091', CAST(N'2018-07-03 04:22:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (79, N'Que Delícia', 79, 1, N'Rua da Panificadora, 12', N'Rio de Janeiro', N'02389-673', 4, N'(21) 555-4252', CAST(N'2018-07-03 04:22:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (80, N'Ricardo Adocicados', 80, 2, N'Av. Copacabana, 267', N'Rio de Janeiro', N'02389-890', 4, N'(21) 555-3412', CAST(N'2018-07-03 04:22:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (81, N'Comércio Mineiro', 81, 10, N'Av. dos Lusíadas, 23', N'Sao Paulo', N'05432-043', 4, N'(11) 555-7647', CAST(N'2018-02-03 01:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (82, N'Familia Arquibaldo', 82, 4, N'Rua Orós, 92', N'Sao Paulo', N'05442-030', 4, N'(11) 555-9857', CAST(N'2018-02-03 01:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (83, N'Gourmet Lanchonetes', 83, 10, N'Av. Brasil, 442', N'Campinas', N'04876-786', 4, N'(11) 555-9482', CAST(N'2018-02-03 01:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (84, N'Queen Cozinha', 84, 4, N'Alameda dos Canàrios, 891', N'Sao Paulo', N'05487-020', 4, N'(11) 555-1189', CAST(N'2018-02-03 01:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (85, N'Tradição Hipermercados', 85, 12, N'Av. Inês de Castro, 414', N'Sao Paulo', N'05634-030', 4, N'(11) 555-2167', CAST(N'2018-02-03 01:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (86, N'Wellington Importadora', 86, 11, N'Rua do Mercado, 12', N'Resende', N'08737-363', 4, N'(14) 555-8122', CAST(N'2018-02-03 01:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (87, N'HILARION-Abastos', 87, 12, N'Carrera 22 con Ave. Carlos Soublette #8-35', N'San Cristóbal', N'5022', 21, N'(5) 555-1340', CAST(N'2018-02-03 01:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (88, N'Lazy K Kountry Store', 88, 5, N'12 Orchestra Terrace', N'Walla Walla', N'99362', 20, N'(509) 555-7969', CAST(N'2018-02-03 01:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (89, N'Trail''s Head Gourmet Provisioners', 89, 10, N'722 DaVinci Blvd.', N'Kirkland', N'98034', 20, N'(206) 555-8257', CAST(N'2018-02-03 01:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (90, N'White Clover Markets', 90, 7, N'305 - 14th Ave. S. Suite 3B', N'Seattle', N'98128', 20, N'(206) 555-4112', CAST(N'2018-02-03 01:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (91, N'Split Rail Beer & Ale', 91, 11, N'P.O. Box 555', N'Lander', N'82520', 20, N'(307) 555-4680', CAST(N'2018-02-03 01:00:00.0000000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (92, N'Trupebistor Direct ', 92, 10, N'2918 Wyndmoor Ave', N'Cleveland', N'92584', 18, N'569960-0988', CAST(N'2018-02-09 17:01:39.7181777' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (93, N'Trudimackentor WorldWide ', 93, 7, N'999 Satan Ave', N'Rochester', N'67295', 12, N'5504500025', CAST(N'2018-02-17 13:16:15.9664730' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (94, N'Cipvenimin International ', 94, 7, N'70 Blue water Drive', N'Tampa', N'84373', 12, N'782-3374387', CAST(N'2018-02-10 04:21:27.7475336' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (95, N'Rezapan  ', 95, 6, N'77 Wind Blown Street', N'Long Beach', N'17913', 10, N'270-8090642', CAST(N'2018-02-07 13:28:29.0906216' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (96, N'Rebanazz International ', 96, 4, N'400 Banner way', N'Minneapolis', N'22879', 6, N'8342771728', CAST(N'2018-02-08 10:19:43.1438329' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (97, N'Tuprobamicator International Inc', 97, 6, N'14 Snow Lane', N'Colorado', N'20141', 10, N'172-309-7838', CAST(N'2018-02-05 11:43:40.1278534' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (98, N'Grotanentor Holdings ', 98, 6, N'9544 Center Street NE', N'St. Paul', N'04648', 10, N'795080-4930', CAST(N'2018-02-10 11:06:18.5518612' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (99, N'Monquestilin Holdings ', 99, 1, N'9672 High St', N'Indianapolis', N'57456', 1, N'070-3408303', CAST(N'2018-02-06 21:35:17.1007218' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (100, N'Trupickefazz Direct ', 100, 12, N'1 Glenside ave', N'St. Petersburg', N'00955', 21, N'349-1262614', CAST(N'2018-02-07 03:40:55.3660417' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (101, N'Rapnipedower  ', 101, 4, N'678 Cherry Lane', N'Columbus', N'77916', 7, N'368-9803967', CAST(N'2018-02-10 20:53:48.8469235' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (102, N'Karen''s Coffee shop', 102, 7, N'955 River Road', N'Salem', N'97303', 20, N'444-897-1287', CAST(N'2018-03-24 08:43:23.3730000' AS DateTime2))
INSERT [dbo].[Customers] ([CustomerIdentifier], [CompanyName], [ContactIdentifier], [ContactTypeIdentifier], [Street], [City], [PostalCode], [CountryIdentfier], [Phone], [ModifiedDate]) VALUES (103, N'Alfreds Futterkiste', 103, 7, N'Obere Str. 57', N'Berlin', N'12209', 9, N'030-0074321', CAST(N'2018-03-24 09:09:49.8500000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
ALTER TABLE [dbo].[CompanyAddress]  WITH CHECK ADD  CONSTRAINT [FK_CompanyAddress_Countries] FOREIGN KEY([CountryIdentfier])
REFERENCES [dbo].[Countries] ([id])
GO
ALTER TABLE [dbo].[CompanyAddress] CHECK CONSTRAINT [FK_CompanyAddress_Countries]
GO
ALTER TABLE [dbo].[CompanyAddress]  WITH CHECK ADD  CONSTRAINT [FK_CompanyAddress_Customers] FOREIGN KEY([CustomerIdentifier])
REFERENCES [dbo].[Customers] ([CustomerIdentifier])
GO
ALTER TABLE [dbo].[CompanyAddress] CHECK CONSTRAINT [FK_CompanyAddress_Customers]
GO
ALTER TABLE [dbo].[ContactContactDevices]  WITH CHECK ADD  CONSTRAINT [FK_ContactContactDevices_Contact] FOREIGN KEY([ContactIdentifier])
REFERENCES [dbo].[Contact] ([ContactIdentifier])
GO
ALTER TABLE [dbo].[ContactContactDevices] CHECK CONSTRAINT [FK_ContactContactDevices_Contact]
GO
ALTER TABLE [dbo].[ContactContactDevices]  WITH CHECK ADD  CONSTRAINT [FK_ContactContactDevices_PhoneType] FOREIGN KEY([PhoneTypeIdenitfier])
REFERENCES [dbo].[PhoneType] ([PhoneTypeIdenitfier])
GO
ALTER TABLE [dbo].[ContactContactDevices] CHECK CONSTRAINT [FK_ContactContactDevices_PhoneType]
GO
ALTER TABLE [dbo].[ContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_ContactDetails_Contact] FOREIGN KEY([ContactIdentifier])
REFERENCES [dbo].[Contact] ([ContactIdentifier])
GO
ALTER TABLE [dbo].[ContactDetails] CHECK CONSTRAINT [FK_ContactDetails_Contact]
GO
ALTER TABLE [dbo].[ContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_ContactDetails_ContactType] FOREIGN KEY([ContactTypeIdentifier])
REFERENCES [dbo].[ContactType] ([ContactTypeIdentifier])
GO
ALTER TABLE [dbo].[ContactDetails] CHECK CONSTRAINT [FK_ContactDetails_ContactType]
GO
ALTER TABLE [dbo].[ContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_ContactDetails_Countries] FOREIGN KEY([CountryIdentfier])
REFERENCES [dbo].[Countries] ([id])
GO
ALTER TABLE [dbo].[ContactDetails] CHECK CONSTRAINT [FK_ContactDetails_Countries]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Contact] FOREIGN KEY([ContactIdentifier])
REFERENCES [dbo].[Contact] ([ContactIdentifier])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Contact]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_ContactType] FOREIGN KEY([ContactTypeIdentifier])
REFERENCES [dbo].[ContactType] ([ContactTypeIdentifier])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_ContactType]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Countries] FOREIGN KEY([CountryIdentfier])
REFERENCES [dbo].[Countries] ([id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Countries]
GO
