CREATE TABLE [dbo].[DimGeography]
(
[GeographyKey] [int] NOT NULL IDENTITY(1, 1),
[GeographyType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContinentName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CityName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StateProvinceName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RegionCountryName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Geometry] [sys].[geometry] NULL,
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimGeography] ADD CONSTRAINT [PK_DimGeography_GeographyKey] PRIMARY KEY CLUSTERED  ([GeographyKey]) ON [PRIMARY]
GO
