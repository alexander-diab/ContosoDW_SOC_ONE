CREATE TABLE [dbo].[DimStore]
(
[StoreKey] [int] NOT NULL IDENTITY(1, 1),
[GeographyKey] [int] NOT NULL,
[StoreManager] [int] NULL,
[StoreType] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StoreName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreDescription] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OpenDate] [datetime] NOT NULL,
[CloseDate] [datetime] NULL,
[EntityKey] [int] NULL,
[ZipCode] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZipCodeExtension] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StorePhone] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StoreFax] [nvarchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressLine1] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressLine2] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CloseReason] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmployeeCount] [int] NULL,
[SellingAreaSize] [float] NULL,
[LastRemodelDate] [datetime] NULL,
[GeoLocation] [sys].[geography] NULL,
[Geometry] [sys].[geometry] NULL,
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
WITH
(
DATA_COMPRESSION = PAGE
)
GO
ALTER TABLE [dbo].[DimStore] ADD CONSTRAINT [PK_DimStore_StoreKey] PRIMARY KEY CLUSTERED  ([StoreKey]) WITH (DATA_COMPRESSION = PAGE) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimStore] ADD CONSTRAINT [FK_DimStore_DimGeography] FOREIGN KEY ([GeographyKey]) REFERENCES [dbo].[DimGeography] ([GeographyKey])
GO
