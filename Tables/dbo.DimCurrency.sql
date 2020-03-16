CREATE TABLE [dbo].[DimCurrency]
(
[CurrencyKey] [int] NOT NULL IDENTITY(1, 1),
[CurrencyLabel] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CurrencyName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CurrencyDescription] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETLLoadID] [int] NULL,
[LoadDate] [datetime] NULL,
[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimCurrency] ADD CONSTRAINT [PK_DimCurrency_CurrencyKey] PRIMARY KEY CLUSTERED  ([CurrencyKey]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimCurrency] ADD CONSTRAINT [AK_DimCurrency_CurrencyLabel] UNIQUE NONCLUSTERED  ([CurrencyLabel]) ON [PRIMARY]
GO
