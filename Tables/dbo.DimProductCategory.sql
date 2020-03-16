CREATE TABLE [dbo].[DimProductCategory]
(
[ProductCategoryKey] [int] NOT NULL IDENTITY(1, 1),
[ProductCategoryLabel] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProductCategoryName] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProductCategoryDescription] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimProductCategory] ADD CONSTRAINT [PK_DimProductCategory_ProductCategoryKey] PRIMARY KEY CLUSTERED  ([ProductCategoryKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimProductCategory] ADD CONSTRAINT [AK_DimProductCategory_ProductCategoryLabel] UNIQUE NONCLUSTERED  ([ProductCategoryLabel]) ON [PRIMARY]
GO
