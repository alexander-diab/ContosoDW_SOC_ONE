CREATE TABLE [dbo].[DimEntity]
(
[EntityKey] [int] NOT NULL IDENTITY(1, 1),
[EntityLabel] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParentEntityKey] [int] NULL,
[ParentEntityLabel] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EntityName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EntityDescription] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EntityType] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartDate] [datetime] NULL,
[EndDate] [datetime] NULL,
[Status] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_DimEntity_Status] DEFAULT (N'Current'),
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
WITH
(
DATA_COMPRESSION = PAGE
)
GO
ALTER TABLE [dbo].[DimEntity] ADD CONSTRAINT [PK_DimEntity_EntityKey] PRIMARY KEY CLUSTERED  ([EntityKey]) WITH (DATA_COMPRESSION = PAGE) ON [PRIMARY]
GO
