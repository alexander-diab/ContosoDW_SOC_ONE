CREATE TABLE [dbo].[DimMachine]
(
[MachineKey] [int] NOT NULL,
[MachineLabel] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StoreKey] [int] NOT NULL,
[MachineType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MachineName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MachineDescription] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VendorName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MachineOS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MachineSource] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MachineHardware] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MachineSoftware] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ServiceStartDate] [datetime] NOT NULL,
[DecommissionDate] [datetime] NULL,
[LastModifiedDate] [datetime] NULL,
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimMachine] ADD CONSTRAINT [PK_DimMachine_MachineKey] PRIMARY KEY CLUSTERED  ([MachineKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimMachine] ADD CONSTRAINT [FK_DimMachine_DimStore] FOREIGN KEY ([StoreKey]) REFERENCES [dbo].[DimStore] ([StoreKey])
GO
