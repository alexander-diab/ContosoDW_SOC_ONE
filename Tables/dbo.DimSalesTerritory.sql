CREATE TABLE [dbo].[DimSalesTerritory]
(
[SalesTerritoryKey] [int] NOT NULL IDENTITY(1, 1),
[GeographyKey] [int] NOT NULL,
[SalesTerritoryLabel] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SalesTerritoryName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SalesTerritoryRegion] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SalesTerritoryCountry] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SalesTerritoryGroup] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SalesTerritoryLevel] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SalesTerritoryManager] [int] NULL,
[StartDate] [datetime] NULL,
[EndDate] [datetime] NULL,
[Status] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimSalesTerritory] ADD CONSTRAINT [PK_DimSalesTerritory_SalesTerritoryKey] PRIMARY KEY CLUSTERED  ([SalesTerritoryKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimSalesTerritory] ADD CONSTRAINT [AK_DimSalesTerritory_SalesTerritoryLabel] UNIQUE NONCLUSTERED  ([SalesTerritoryLabel]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimSalesTerritory] ADD CONSTRAINT [FK_DimSalesTerritory_DimGeography] FOREIGN KEY ([GeographyKey]) REFERENCES [dbo].[DimGeography] ([GeographyKey])
GO
