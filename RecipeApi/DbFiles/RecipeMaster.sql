USE [RecipeMaster]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 13.03.2019 03:51:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directions]    Script Date: 13.03.2019 03:51:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directions](
	[DirectionId] [uniqueidentifier] NOT NULL,
	[RecipeId] [uniqueidentifier] NOT NULL,
	[Step] [nvarchar](max) NULL,
	[StepOrder] [tinyint] NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Directions] PRIMARY KEY CLUSTERED 
(
	[DirectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 13.03.2019 03:51:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[IngredientId] [uniqueidentifier] NOT NULL,
	[RecipeId] [uniqueidentifier] NOT NULL,
	[UnitId] [uniqueidentifier] NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Quantity] [int] NULL,
	[IsVisible] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 13.03.2019 03:51:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[RecipeId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[RecipeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipeCategory]    Script Date: 13.03.2019 03:51:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeCategory](
	[RecipeCategoryId] [uniqueidentifier] NOT NULL,
	[RecipeId] [uniqueidentifier] NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RecipeCategory] PRIMARY KEY CLUSTERED 
(
	[RecipeCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 13.03.2019 03:51:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryId], [Name], [IsVisible], [IsDeleted]) VALUES (N'6b8f12ec-5c2d-4e19-99aa-1595ccbcf80e', N'Main Dish', 1, 0)
INSERT [dbo].[Category] ([CategoryId], [Name], [IsVisible], [IsDeleted]) VALUES (N'a9c2e275-4e23-4868-a21b-59c3f3d528c6', N'Microwave', 1, 0)
INSERT [dbo].[Category] ([CategoryId], [Name], [IsVisible], [IsDeleted]) VALUES (N'c5c19923-99a3-4dc4-8c56-5ca0d1f2e466', N'Chili', 1, 0)
INSERT [dbo].[Category] ([CategoryId], [Name], [IsVisible], [IsDeleted]) VALUES (N'08314c87-e2cf-48fa-ba39-6d877bce16b4', N'Vegetables', 1, 0)
INSERT [dbo].[Category] ([CategoryId], [Name], [IsVisible], [IsDeleted]) VALUES (N'42509ee5-754b-4ab6-895b-7229e8d93a7d', N'Liquor', 1, 0)
INSERT [dbo].[Category] ([CategoryId], [Name], [IsVisible], [IsDeleted]) VALUES (N'67583198-f8dc-4e9e-8b3f-b6322981d23c', N'Cake Mixes', 1, 0)
INSERT [dbo].[Category] ([CategoryId], [Name], [IsVisible], [IsDeleted]) VALUES (N'056f71bb-2753-4e4b-b0a2-ea6eb61ae130', N'Cakes', 1, 0)
INSERT [dbo].[Directions] ([DirectionId], [RecipeId], [Step], [StepOrder], [IsVisible], [IsDeleted]) VALUES (N'3aa0e504-38ab-43f4-a9b6-250d37760dbf', N'bc77687f-c0ae-4bff-8343-acf0fdf8a9e1', N'  asasas', 1, 1, 0)
INSERT [dbo].[Directions] ([DirectionId], [RecipeId], [Step], [StepOrder], [IsVisible], [IsDeleted]) VALUES (N'f915e026-68eb-4220-b237-7b194c480778', N'bdd1cca8-2156-4693-8c12-3cd4e021055f', N'  asasas', 1, 1, 0)
INSERT [dbo].[Directions] ([DirectionId], [RecipeId], [Step], [StepOrder], [IsVisible], [IsDeleted]) VALUES (N'7b9add8c-4e81-47e1-a2e2-b7eb44a2ac20', N'9dee0d0c-bb8b-4cb2-9b2f-7fd692fbc1e1', N'adadasdasdasd', 1, 1, 0)
INSERT [dbo].[Ingredient] ([IngredientId], [RecipeId], [UnitId], [Name], [Quantity], [IsVisible], [IsDeleted]) VALUES (N'bc67fa67-e9e5-4ef3-bc71-222f40a2ea07', N'9dee0d0c-bb8b-4cb2-9b2f-7fd692fbc1e1', N'fee835c9-5865-4efa-9b52-efa8c5d9e5e8', N'Ground chuck or lean ground; beef', 1, 1, 0)
INSERT [dbo].[Ingredient] ([IngredientId], [RecipeId], [UnitId], [Name], [Quantity], [IsVisible], [IsDeleted]) VALUES (N'69140748-3439-43d4-9f80-c21574049382', N'9dee0d0c-bb8b-4cb2-9b2f-7fd692fbc1e1', NULL, N'Hot pepper sauce; to taste', NULL, 1, 0)
INSERT [dbo].[Recipe] ([RecipeId], [Title], [IsVisible], [IsDeleted]) VALUES (N'bdd1cca8-2156-4693-8c12-3cd4e021055f', N'30 Minute Chili 3', 1, 0)
INSERT [dbo].[Recipe] ([RecipeId], [Title], [IsVisible], [IsDeleted]) VALUES (N'9dee0d0c-bb8b-4cb2-9b2f-7fd692fbc1e1', N'30 Minute Chili', 1, 0)
INSERT [dbo].[Recipe] ([RecipeId], [Title], [IsVisible], [IsDeleted]) VALUES (N'bc77687f-c0ae-4bff-8343-acf0fdf8a9e1', N'30 Minute Chili 2', 1, 0)
INSERT [dbo].[RecipeCategory] ([RecipeCategoryId], [RecipeId], [CategoryId], [IsVisible], [IsDeleted]) VALUES (N'90191571-f0f4-495e-9f15-4bfd512cff9f', N'9dee0d0c-bb8b-4cb2-9b2f-7fd692fbc1e1', N'c5c19923-99a3-4dc4-8c56-5ca0d1f2e466', 1, 0)
INSERT [dbo].[RecipeCategory] ([RecipeCategoryId], [RecipeId], [CategoryId], [IsVisible], [IsDeleted]) VALUES (N'c2caf6ff-9637-43ff-a5b9-61c4c709665c', N'bc77687f-c0ae-4bff-8343-acf0fdf8a9e1', N'6b8f12ec-5c2d-4e19-99aa-1595ccbcf80e', 1, 0)
INSERT [dbo].[RecipeCategory] ([RecipeCategoryId], [RecipeId], [CategoryId], [IsVisible], [IsDeleted]) VALUES (N'441f3f46-5470-4327-9c87-896357aeb076', N'bdd1cca8-2156-4693-8c12-3cd4e021055f', N'6b8f12ec-5c2d-4e19-99aa-1595ccbcf80e', 1, 0)
INSERT [dbo].[RecipeCategory] ([RecipeCategoryId], [RecipeId], [CategoryId], [IsVisible], [IsDeleted]) VALUES (N'd10239cc-4453-42c9-9f36-9347c7cfd63a', N'bc77687f-c0ae-4bff-8343-acf0fdf8a9e1', N'c5c19923-99a3-4dc4-8c56-5ca0d1f2e466', 1, 0)
INSERT [dbo].[RecipeCategory] ([RecipeCategoryId], [RecipeId], [CategoryId], [IsVisible], [IsDeleted]) VALUES (N'3f9dbeb8-999d-4596-a567-b98540c71509', N'bdd1cca8-2156-4693-8c12-3cd4e021055f', N'c5c19923-99a3-4dc4-8c56-5ca0d1f2e466', 1, 0)
INSERT [dbo].[RecipeCategory] ([RecipeCategoryId], [RecipeId], [CategoryId], [IsVisible], [IsDeleted]) VALUES (N'13803e23-0356-48f7-93af-d0344942cccd', N'9dee0d0c-bb8b-4cb2-9b2f-7fd692fbc1e1', N'6b8f12ec-5c2d-4e19-99aa-1595ccbcf80e', 1, 0)
INSERT [dbo].[Unit] ([UnitId], [Name], [IsVisible], [IsDeleted]) VALUES (N'a101688b-dd43-45e9-accb-423b9fb388b2', N'Tablespoon', 1, 0)
INSERT [dbo].[Unit] ([UnitId], [Name], [IsVisible], [IsDeleted]) VALUES (N'635657ef-b8d3-4081-81e0-484fb34b30c9', N'Teaspoon', 1, 0)
INSERT [dbo].[Unit] ([UnitId], [Name], [IsVisible], [IsDeleted]) VALUES (N'7c8ba7ca-383e-4cf0-a7fa-b3783c6d63e8', N'Can', 1, 0)
INSERT [dbo].[Unit] ([UnitId], [Name], [IsVisible], [IsDeleted]) VALUES (N'fee835c9-5865-4efa-9b52-efa8c5d9e5e8', N'Pound', 1, 0)
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CategoryId]  DEFAULT (newid()) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsVisible]  DEFAULT ((1)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Directions] ADD  CONSTRAINT [DF_Directions_DirectionId]  DEFAULT (newid()) FOR [DirectionId]
GO
ALTER TABLE [dbo].[Directions] ADD  CONSTRAINT [DF_Directions_StepOrder]  DEFAULT ((1)) FOR [StepOrder]
GO
ALTER TABLE [dbo].[Directions] ADD  CONSTRAINT [DF_Directions_IsVisible]  DEFAULT ((1)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[Directions] ADD  CONSTRAINT [DF_Directions_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Ingredient] ADD  CONSTRAINT [DF_Ingredient_IngredientId]  DEFAULT (newid()) FOR [IngredientId]
GO
ALTER TABLE [dbo].[Ingredient] ADD  CONSTRAINT [DF_Ingredient_IsVisible]  DEFAULT ((1)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[Ingredient] ADD  CONSTRAINT [DF_Ingredient_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Recipe] ADD  CONSTRAINT [DF_Recipe_RecipeId]  DEFAULT (newid()) FOR [RecipeId]
GO
ALTER TABLE [dbo].[Recipe] ADD  CONSTRAINT [DF_Recipe_IsVisible]  DEFAULT ((1)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[Recipe] ADD  CONSTRAINT [DF_Recipe_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[RecipeCategory] ADD  CONSTRAINT [DF_RecipeCategory_RecipeCategoryId]  DEFAULT (newid()) FOR [RecipeCategoryId]
GO
ALTER TABLE [dbo].[RecipeCategory] ADD  CONSTRAINT [DF_RecipeCategory_IsVisible]  DEFAULT ((1)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[RecipeCategory] ADD  CONSTRAINT [DF_RecipeCategory_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF_Unit_UnitId]  DEFAULT (newid()) FOR [UnitId]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF_Unit_IsVisible]  DEFAULT ((1)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF_Unit_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Directions]  WITH CHECK ADD  CONSTRAINT [FK_Directions_Recipe] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[Recipe] ([RecipeId])
GO
ALTER TABLE [dbo].[Directions] CHECK CONSTRAINT [FK_Directions_Recipe]
GO
ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK_Ingredient_Recipe] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[Recipe] ([RecipeId])
GO
ALTER TABLE [dbo].[Ingredient] CHECK CONSTRAINT [FK_Ingredient_Recipe]
GO
ALTER TABLE [dbo].[Ingredient]  WITH CHECK ADD  CONSTRAINT [FK_Ingredient_Unit] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Unit] ([UnitId])
GO
ALTER TABLE [dbo].[Ingredient] CHECK CONSTRAINT [FK_Ingredient_Unit]
GO
ALTER TABLE [dbo].[RecipeCategory]  WITH CHECK ADD  CONSTRAINT [FK_RecipeCategory_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[RecipeCategory] CHECK CONSTRAINT [FK_RecipeCategory_Category]
GO
ALTER TABLE [dbo].[RecipeCategory]  WITH CHECK ADD  CONSTRAINT [FK_RecipeCategory_RecipeCategory] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[Recipe] ([RecipeId])
GO
ALTER TABLE [dbo].[RecipeCategory] CHECK CONSTRAINT [FK_RecipeCategory_RecipeCategory]
GO
