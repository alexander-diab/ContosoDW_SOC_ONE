CREATE TABLE [dbo].[DimScenario]
(
[ScenarioKey] [int] NOT NULL IDENTITY(1, 1),
[ScenarioLabel] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ScenarioName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ScenarioDescription] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimScenario] ADD CONSTRAINT [PK_DimScenario] PRIMARY KEY CLUSTERED  ([ScenarioKey]) ON [PRIMARY]
GO
