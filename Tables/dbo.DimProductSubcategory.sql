CREATE TABLE [dbo].[DimProductSubcategory]
(
[ProductSubcategoryKey] [int] NOT NULL IDENTITY(1, 1),
[ProductSubcategoryLabel] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProductSubcategoryName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProductSubcategoryDescription] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProductCategoryKey] [int] NULL,
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimProductSubcategory] ADD CONSTRAINT [PK_DimProductSubcategory_ProductSubcategoryKey] PRIMARY KEY CLUSTERED  ([ProductSubcategoryKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimProductSubcategory] ADD CONSTRAINT [AK_DimProductSubcategory_ProductSubcategoryLabel] UNIQUE NONCLUSTERED  ([ProductSubcategoryLabel]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimProductSubcategory] ADD CONSTRAINT [FK_DimProductSubcategory_DimProductCategory] FOREIGN KEY ([ProductCategoryKey]) REFERENCES [dbo].[DimProductCategory] ([ProductCategoryKey])
GO
