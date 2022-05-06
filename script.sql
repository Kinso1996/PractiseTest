--Database creation query run first
CREATE DATABASE AreaServices;

--Area Table creation query
CREATE TABLE [AreaServices].[dbo].[Area](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[DateCreated] date NULL,
 CONSTRAINT [Area_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--Inserting Areas query
INSERT INTO [AreaServices].[dbo].[Area] (Name, DateCreated)
VALUES ('HARARE', '2022-05-06'),('GWERU', '2022-05-06'),('BULAWAYO', '2022-05-06');

--Street Table creation query
CREATE TABLE [AreaServices].[dbo].[Street](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[AreaID] [bigint] NOT NULL,
	[AreaName] [varchar](255) NULL
 CONSTRAINT [Shop_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
