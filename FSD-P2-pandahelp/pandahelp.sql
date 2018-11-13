CREATE TABLE [dbo].[listing](
	[ListingID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[description] [varchar](100) NULL,
	[ModuleNo] [int] NULL,
	[PaymentID] [int] NULL,
	[UserProfileID] [int] NULL,
	[DateCreated] [datetime] NOT NULL,
	[UserID] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ListingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 10/11/2018 4:29:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Module](
	[ModuleNo] [int] IDENTITY(1,1) NOT NULL,
	[ModuleName] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 10/11/2018 4:29:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Payment](
	[ModeOfPayment] [varchar](20) NULL,
	[ShortDescription] [varchar](50) NULL,
	[UserProfileID] [int] NOT NULL,
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 10/11/2018 4:29:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserProfileID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Year] [int] NULL,
	[COS] [varchar](50) NULL,
	[ContactHP] [varchar](50) NULL,
	[ContactEmail] [varchar](50) NULL,
	[SDescription] [varchar](100) NULL,
	[Email] [varchar](50) NULL,
	[Skillset] [varchar](100) NULL,
	[ProfilePic] [varchar](30) NULL,
	[Point] [int] NULL,
	[UserPassword] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[listing] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[listing]  WITH CHECK ADD FOREIGN KEY([ModuleNo])
REFERENCES [dbo].[Module] ([ModuleNo])
GO
ALTER TABLE [dbo].[listing]  WITH CHECK ADD FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([PaymentID])
GO
ALTER TABLE [dbo].[listing]  WITH CHECK ADD FOREIGN KEY([UserProfileID])
REFERENCES [dbo].[UserProfile] ([UserProfileID])
GO
ALTER TABLE [dbo].[listing]  WITH CHECK ADD  CONSTRAINT [UserProfileID] FOREIGN KEY([UserProfileID])
REFERENCES [dbo].[UserProfile] ([UserProfileID])
GO
ALTER TABLE [dbo].[listing] CHECK CONSTRAINT [UserProfileID]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([UserProfileID])
REFERENCES [dbo].[UserProfile] ([UserProfileID])
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD CHECK  (([Point]>=(0) AND [Point]<=(999999)))
GO