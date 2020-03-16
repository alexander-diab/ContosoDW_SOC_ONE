CREATE TABLE [dbo].[DimChannel]
(
[ChannelKey] [int] NOT NULL IDENTITY(1, 1),
[ChannelLabel] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ChannelName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChannelDescription] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
WITH
(
DATA_COMPRESSION = PAGE
)
GO
ALTER TABLE [dbo].[DimChannel] ADD CONSTRAINT [PK_DimChannel_ChannelKey] PRIMARY KEY CLUSTERED  ([ChannelKey]) WITH (DATA_COMPRESSION = PAGE) ON [PRIMARY]
GO
