CREATE TABLE [dbo].[DimDate]
(
[Datekey] [datetime] NOT NULL,
[FullDateLabel] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DateDescription] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CalendarYear] [int] NOT NULL,
[CalendarYearLabel] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CalendarHalfYear] [int] NOT NULL,
[CalendarHalfYearLabel] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CalendarQuarter] [int] NOT NULL,
[CalendarQuarterLabel] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CalendarMonth] [int] NOT NULL,
[CalendarMonthLabel] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CalendarWeek] [int] NOT NULL,
[CalendarWeekLabel] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CalendarDayOfWeek] [int] NOT NULL,
[CalendarDayOfWeekLabel] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FiscalYear] [int] NOT NULL,
[FiscalYearLabel] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FiscalHalfYear] [int] NOT NULL,
[FiscalHalfYearLabel] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FiscalQuarter] [int] NOT NULL,
[FiscalQuarterLabel] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FiscalMonth] [int] NOT NULL,
[FiscalMonthLabel] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsWorkDay] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsHoliday] [int] NOT NULL,
[HolidayName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EuropeSeason] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NorthAmericaSeason] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AsiaSeason] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimDate] ADD CONSTRAINT [PK_DimDate_DateKey] PRIMARY KEY CLUSTERED  ([Datekey]) ON [PRIMARY]
GO
