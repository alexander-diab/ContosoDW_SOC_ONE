CREATE TABLE [dbo].[FactITMachine]
(
[ITMachinekey] [int] NOT NULL IDENTITY(1, 1),
[MachineKey] [int] NOT NULL,
[Datekey] [datetime] NOT NULL,
[CostAmount] [money] NULL,
[CostType] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
WITH
(
DATA_COMPRESSION = PAGE
)
GO
ALTER TABLE [dbo].[FactITMachine] ADD CONSTRAINT [PK_FactITMachine] PRIMARY KEY CLUSTERED  ([ITMachinekey]) WITH (DATA_COMPRESSION = PAGE) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactITMachine] ADD CONSTRAINT [FK_FactITMachine_DimDate] FOREIGN KEY ([Datekey]) REFERENCES [dbo].[DimDate] ([Datekey])
GO
ALTER TABLE [dbo].[FactITMachine] ADD CONSTRAINT [FK_FactITMachine_DimMachine] FOREIGN KEY ([MachineKey]) REFERENCES [dbo].[DimMachine] ([MachineKey])
GO
