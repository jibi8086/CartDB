USE [Sample]
GO

/****** Object:  Table [dbo].[tblEmployee]    Script Date: 8/2/2018 6:14:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblEmployee](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [varchar](50) NOT NULL,
	[EmpEmail] [varchar](100) NOT NULL,
	[EmpPassword] [varchar](50) NOT NULL,
	[EmpIsActive] [bit] NOT NULL,
	[EmpIsDelete] [bit] NOT NULL,
	[EmpIsAdmin] [bit] NOT NULL,
	[EnteredBy] [int] NOT NULL,
	[EnteredOn] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[tblCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](300) NULL,
	[Description] [varchar](500) NULL,
	[ImageName] [varchar](300) NULL,
	[ImageUrl] [varchar](500) NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[tblProduct](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[FkCategoryId] [int] NULL,
	[ProductName] [varchar](500) NULL,
	[ProductPrice] [int] NULL,
	[ProductDescription] [varchar](max) NULL,
	[ProductImage] [varchar](1000) NULL,
	[ProductImageUrl] [varchar](500) NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
