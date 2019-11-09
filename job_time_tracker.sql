/*=============================================================


Version:   1.01.0001
Server:    ADMIN-PC\MSSQLSER2005

DATABASE:	job_time_tracker
	Tables:
		Department, Equipment_Scrum, ScrumTable, Time_Employee, WorkInProgress


=============================================================*/
SET ANSI_WARNINGS ON
SET XACT_ABORT ON
SET ARITHABORT ON
SET NOCOUNT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
GO
-- BEGINNING TRANSACTION STRUCTURE
PRINT 'Beginning transaction STRUCTURE'
BEGIN TRANSACTION _STRUCTURE_
GO
-- Create Table [dbo].[Time_Employee]
Print 'Create Table [dbo].[Time_Employee]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Time_Employee] (
		[PK_Time_Employee]          [varchar](max) NULL,
		[FK_WorkInProgress_No_]     [varchar](max) NULL,
		[ID_employee]               [varchar](max) NULL,
		[Time_Start]                [datetime] NULL,
		[Time_End]                  [datetime] NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[ScrumTable]
Print 'Create Table [dbo].[ScrumTable]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[ScrumTable] (
		[timestamp]     [varbinary](max) NULL,
		[Job]           [varchar](max) NULL,
		[Item]          [varchar](max) NULL,
		[CoreTotal]     [int] NULL,
		[ToDo]          [int] NULL,
		[Doing]         [int] NULL,
		[Done]          [int] NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[Department]
Print 'Create Table [dbo].[Department]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Department] (
		[timestamp]          [varbinary](max) NULL,
		[Department No_]     [varchar](max) NULL,
		[Description]        [varchar](max) NULL,
		[Target]             [numeric](18, 0) NULL,
		[Min Target]         [numeric](18, 0) NULL,
		[Max Target]         [numeric](18, 0) NULL,
		[Med Target]         [numeric](18, 0) NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[Equipment_Scrum]
Print 'Create Table [dbo].[Equipment_Scrum]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[Equipment_Scrum] (
		[timestamp]         [varbinary](max) NULL,
		[Equipment No_]     [varchar](max) NULL,
		[Job]               [varchar](max) NULL,
		[Item]              [varchar](max) NULL,
		[Core]              [int] NULL,
		[CoreTotal]         [int] NULL,
		[Phases]            [varchar](max) NULL,
		[Status]            [varchar](max) NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[WorkInProgress]
Print 'Create Table [dbo].[WorkInProgress]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[WorkInProgress] (
		[timestamp]                [varbinary](max) NULL,
		[No_]                      [varchar](max) NULL,
		[Job]                      [varchar](max) NULL,
		[Item]                     [varchar](max) NULL,
		[Customer No_]             [varchar](max) NULL,
		[Customer Description]     [varchar](max) NULL,
		[Core Description]         [varchar](max) NULL,
		[Core]                     [int] NULL,
		[CoreTotal]                [int] NULL,
		[Location]                 [varchar](max) NULL,
		[Operation]                [varchar](max) NULL,
		[Badge Start]              [varchar](max) NULL,
		[Date Start]               [datetime] NULL,
		[Badge End]                [varchar](max) NULL,
		[Date End]                 [datetime] NULL,
		[No Operator]              [decimal](18, 0) NULL,
		[Weight for Unit kg]       [decimal](18, 0) NULL,
		[Thickness mm]             [decimal](18, 0) NULL,
		[Static mm]                [decimal](18, 0) NULL,
		[Column 1 Measure mm]      [decimal](18, 0) NULL,
		[Central Measure mm]       [decimal](18, 0) NULL,
		[Column 2 Measure mm]      [decimal](18, 0) NULL,
		[Actual Phases]            [varchar](max) NULL,
		[Department Code]          [varchar](max) NULL
)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- COMMITTING TRANSACTION STRUCTURE
PRINT 'Committing transaction STRUCTURE'
IF @@TRANCOUNT>0
	COMMIT TRANSACTION _STRUCTURE_
GO

SET NOEXEC OFF
GO
SET ANSI_WARNINGS ON
SET XACT_ABORT ON
SET ARITHABORT ON
SET NOCOUNT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
GO
