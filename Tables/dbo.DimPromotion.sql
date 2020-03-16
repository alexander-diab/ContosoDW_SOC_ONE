CREATE TABLE [dbo].[DimPromotion]
(
[PromotionKey] [int] NOT NULL IDENTITY(1, 1),
[PromotionLabel] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PromotionName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PromotionDescription] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DiscountPercent] [float] NULL,
[PromotionType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PromotionCategory] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartDate] [datetime] NOT NULL,
[EndDate] [datetime] NULL,
[MinQuantity] [int] NULL,
[MaxQuantity] [int] NULL,
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimPromotion] ADD CONSTRAINT [PK_DimPromotion_PromotionKey] PRIMARY KEY CLUSTERED  ([PromotionKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimPromotion] ADD CONSTRAINT [AK_DimPromotion_PromotionLabel] UNIQUE NONCLUSTERED  ([PromotionLabel]) ON [PRIMARY]
GO
