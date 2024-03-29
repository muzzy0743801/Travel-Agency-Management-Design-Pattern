USE [master]
GO
/****** Object:  Database [TravelAgencySystem]    Script Date: 07/23/2017 03:09:50 ******/
CREATE DATABASE [TravelAgencySystem] ON  PRIMARY 
( NAME = N'TravelAgencySystem', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQL\MSSQL\DATA\TravelAgencySystem.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TravelAgencySystem_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQL\MSSQL\DATA\TravelAgencySystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TravelAgencySystem] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TravelAgencySystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TravelAgencySystem] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TravelAgencySystem] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TravelAgencySystem] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TravelAgencySystem] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TravelAgencySystem] SET ARITHABORT OFF
GO
ALTER DATABASE [TravelAgencySystem] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TravelAgencySystem] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TravelAgencySystem] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TravelAgencySystem] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TravelAgencySystem] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TravelAgencySystem] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TravelAgencySystem] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TravelAgencySystem] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TravelAgencySystem] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TravelAgencySystem] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TravelAgencySystem] SET  DISABLE_BROKER
GO
ALTER DATABASE [TravelAgencySystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TravelAgencySystem] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TravelAgencySystem] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TravelAgencySystem] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TravelAgencySystem] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TravelAgencySystem] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TravelAgencySystem] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TravelAgencySystem] SET  READ_WRITE
GO
ALTER DATABASE [TravelAgencySystem] SET RECOVERY SIMPLE
GO
ALTER DATABASE [TravelAgencySystem] SET  MULTI_USER
GO
ALTER DATABASE [TravelAgencySystem] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TravelAgencySystem] SET DB_CHAINING OFF
GO
USE [TravelAgencySystem]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 07/23/2017 03:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[route_id] [int] NOT NULL,
	[no_of_seats] [int] NOT NULL,
	[class_type] [varchar](50) NOT NULL,
	[BookedDate] [text] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON
INSERT [dbo].[Booking] ([id], [customer_id], [route_id], [no_of_seats], [class_type], [BookedDate]) VALUES (1, 1, 3, 1, N'Economy', N'22 July 2017')
INSERT [dbo].[Booking] ([id], [customer_id], [route_id], [no_of_seats], [class_type], [BookedDate]) VALUES (2, 1, 3, 1, N'Economy', N'7/22/2017 12:00:00 AM')
SET IDENTITY_INSERT [dbo].[Booking] OFF
/****** Object:  Table [dbo].[Airplane]    Script Date: 07/23/2017 03:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Airplane](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[airplane_id] [varchar](50) NOT NULL,
	[luxury_quota] [int] NULL,
	[economy_quota] [int] NULL,
	[bussiness_quota] [int] NULL,
	[company] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[Eprice] [int] NULL,
	[Bprice] [int] NULL,
	[Lprice] [int] NULL,
 CONSTRAINT [PK_Airplane] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Airplane] ON
INSERT [dbo].[Airplane] ([id], [airplane_id], [luxury_quota], [economy_quota], [bussiness_quota], [company], [name], [Eprice], [Bprice], [Lprice]) VALUES (3, N'a213dasd', 10, 10, 10, N'emirates', N'asdasd', NULL, NULL, NULL)
INSERT [dbo].[Airplane] ([id], [airplane_id], [luxury_quota], [economy_quota], [bussiness_quota], [company], [name], [Eprice], [Bprice], [Lprice]) VALUES (4, N'3211', 10, 10, 10, N'pia', N'pia555', NULL, NULL, NULL)
INSERT [dbo].[Airplane] ([id], [airplane_id], [luxury_quota], [economy_quota], [bussiness_quota], [company], [name], [Eprice], [Bprice], [Lprice]) VALUES (5, N'451', 10, 10, 10, N'pia', N'pk88', 420, 9000, 4500)
INSERT [dbo].[Airplane] ([id], [airplane_id], [luxury_quota], [economy_quota], [bussiness_quota], [company], [name], [Eprice], [Bprice], [Lprice]) VALUES (7, N'pk123', 10, 12, 11, N'pia', N'asd', 3, 2, 1)
INSERT [dbo].[Airplane] ([id], [airplane_id], [luxury_quota], [economy_quota], [bussiness_quota], [company], [name], [Eprice], [Bprice], [Lprice]) VALUES (8, N'PK707', 10, 10, 10, N'PIA', N'Air Bus', 10000, 6000, 12000)
INSERT [dbo].[Airplane] ([id], [airplane_id], [luxury_quota], [economy_quota], [bussiness_quota], [company], [name], [Eprice], [Bprice], [Lprice]) VALUES (9, N'pk786', 45, 65, 100, N'pia', N' air bus', 6000, 10000, 12000)
SET IDENTITY_INSERT [dbo].[Airplane] OFF
/****** Object:  Table [dbo].[Customer]    Script Date: 07/23/2017 03:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustID] [int] IDENTITY(1,1) NOT NULL,
	[CustName] [nvarchar](50) NOT NULL,
	[CustAdd] [nvarchar](50) NOT NULL,
	[CustCnic] [nvarchar](50) NOT NULL,
	[CustPhNo] [nvarchar](50) NOT NULL,
	[CustPPortNo] [nvarchar](50) NULL,
	[EmpID] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([CustID], [CustName], [CustAdd], [CustCnic], [CustPhNo], [CustPPortNo], [EmpID]) VALUES (1, N'ali', N'dsfdkasl', N'5413125', N'3431233', N'34121', 3)
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[Employee]    Script Date: 07/23/2017 03:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [nvarchar](20) NOT NULL,
	[EmpAddress] [nvarchar](30) NOT NULL,
	[EmpCninc] [nvarchar](15) NOT NULL,
	[EmpPhNo] [nvarchar](11) NOT NULL,
	[EmpSalery] [nvarchar](10) NOT NULL,
	[EmpEmail] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](40) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpAddress], [EmpCninc], [EmpPhNo], [EmpSalery], [EmpEmail], [Password], [RoleID]) VALUES (1, N'sdsa', N'sad', N'sadas', N'32432', N'234', N'sdfs', N'342', 0)
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpAddress], [EmpCninc], [EmpPhNo], [EmpSalery], [EmpEmail], [Password], [RoleID]) VALUES (2, N'', N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpAddress], [EmpCninc], [EmpPhNo], [EmpSalery], [EmpEmail], [Password], [RoleID]) VALUES (3, N'ali', N'sdfsd', N'324', N'342', N'1000', N'sdfs', N'111', 2)
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpAddress], [EmpCninc], [EmpPhNo], [EmpSalery], [EmpEmail], [Password], [RoleID]) VALUES (4, N'ali', N'dfds', N'32432', N'23423', N'25000', N'dsjkfs', N'ali', 1)
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpAddress], [EmpCninc], [EmpPhNo], [EmpSalery], [EmpEmail], [Password], [RoleID]) VALUES (5, N'ali', N'dsfd', N'342', N'23423', N'34523', N'23432', N'324', 2)
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpAddress], [EmpCninc], [EmpPhNo], [EmpSalery], [EmpEmail], [Password], [RoleID]) VALUES (6, N'faizan', N'bhadurabad', N'42501-8569182-3', N'54235421', N'25000', N'faizan.javed@gmail.c', N'abc123', 3)
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpAddress], [EmpCninc], [EmpPhNo], [EmpSalery], [EmpEmail], [Password], [RoleID]) VALUES (7, N'osama', N'nazimabad', N'42532-54565-6', N'5456531', N'20000', N'osama.khan@gmail.com', N'abc123', 2)
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  Table [dbo].[Loc]    Script Date: 07/23/2017 03:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loc](
	[LocID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [text] NOT NULL,
 CONSTRAINT [PK_Loc] PRIMARY KEY CLUSTERED 
(
	[LocID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Loc] ON
INSERT [dbo].[Loc] ([LocID], [Location]) VALUES (1, N'karachi')
INSERT [dbo].[Loc] ([LocID], [Location]) VALUES (2, N'lahore')
INSERT [dbo].[Loc] ([LocID], [Location]) VALUES (3, N'dubai')
INSERT [dbo].[Loc] ([LocID], [Location]) VALUES (4, N'america')
INSERT [dbo].[Loc] ([LocID], [Location]) VALUES (5, N'islamabad')
INSERT [dbo].[Loc] ([LocID], [Location]) VALUES (6, N'RahimYar khan')
INSERT [dbo].[Loc] ([LocID], [Location]) VALUES (7, N'Peshawar')
INSERT [dbo].[Loc] ([LocID], [Location]) VALUES (8, N'Gilgit')
INSERT [dbo].[Loc] ([LocID], [Location]) VALUES (9, N'multan')
SET IDENTITY_INSERT [dbo].[Loc] OFF
/****** Object:  Table [dbo].[Route]    Script Date: 07/23/2017 03:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Route](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DepartDate] [nvarchar](50) NOT NULL,
	[DepartTime] [text] NOT NULL,
	[CurrentLoc] [nvarchar](50) NOT NULL,
	[DestinationLoc] [nvarchar](50) NOT NULL,
	[transportID] [varchar](50) NOT NULL,
	[TransportType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RouteAir] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Route] ON
INSERT [dbo].[Route] ([id], [DepartDate], [DepartTime], [CurrentLoc], [DestinationLoc], [transportID], [TransportType]) VALUES (2, N'Monday, July 24, 2017', N'10:00 am', N'karachi', N'lahore', N'3211', N'Airplane')
INSERT [dbo].[Route] ([id], [DepartDate], [DepartTime], [CurrentLoc], [DestinationLoc], [transportID], [TransportType]) VALUES (3, N'Saturday, July 29, 2017', N'3:00 am', N'karachi', N'islamabad', N'pk123', N'Airplane')
INSERT [dbo].[Route] ([id], [DepartDate], [DepartTime], [CurrentLoc], [DestinationLoc], [transportID], [TransportType]) VALUES (5, N'Thursday, July 27, 2017', N'12:00PM', N'dubai', N'islamabad', N'PK707', N'Airplane')
INSERT [dbo].[Route] ([id], [DepartDate], [DepartTime], [CurrentLoc], [DestinationLoc], [transportID], [TransportType]) VALUES (6, N'Friday, August 4, 2017', N'7:00PM', N'islamabad', N'karachi', N'PK707', N'Airplane')
INSERT [dbo].[Route] ([id], [DepartDate], [DepartTime], [CurrentLoc], [DestinationLoc], [transportID], [TransportType]) VALUES (8, N'Wednesday, July 26, 2017', N'3:00PM', N'karachi', N'islamabad', N'tr746', N'Train')
INSERT [dbo].[Route] ([id], [DepartDate], [DepartTime], [CurrentLoc], [DestinationLoc], [transportID], [TransportType]) VALUES (9, N'Saturday, July 29, 2017', N'10:00AM', N'karachi', N'america', N'pk786', N'Airplane')
SET IDENTITY_INSERT [dbo].[Route] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 07/23/2017 03:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [text] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([RoleID], [Role]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([RoleID], [Role]) VALUES (2, N'repceptionist')
INSERT [dbo].[Role] ([RoleID], [Role]) VALUES (3, N'Owner')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Train]    Script Date: 07/23/2017 03:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Train](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TrainID] [nvarchar](50) NOT NULL,
	[TLQ] [int] NULL,
	[TEQ] [int] NULL,
	[TBQ] [int] NULL,
	[company] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[Eprice] [int] NULL,
	[Bprice] [int] NULL,
	[Lprice] [int] NULL,
 CONSTRAINT [PK_Train] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Train] ON
INSERT [dbo].[Train] ([id], [TrainID], [TLQ], [TEQ], [TBQ], [company], [name], [Eprice], [Bprice], [Lprice]) VALUES (2, N'trsd', 23, 22, 21, N'ds', N'sdfks', 3500, 4000, 4500)
INSERT [dbo].[Train] ([id], [TrainID], [TLQ], [TEQ], [TBQ], [company], [name], [Eprice], [Bprice], [Lprice]) VALUES (3, N'tr746', 20, 20, 45, N'pak', N'sa', 650, 4000, 4500)
INSERT [dbo].[Train] ([id], [TrainID], [TLQ], [TEQ], [TBQ], [company], [name], [Eprice], [Bprice], [Lprice]) VALUES (4, N'2es', 0, 22, 2, N'sdad', N'2d', 2, 22, 22)
INSERT [dbo].[Train] ([id], [TrainID], [TLQ], [TEQ], [TBQ], [company], [name], [Eprice], [Bprice], [Lprice]) VALUES (5, N'asd', 45, 45, 45, N'sdsd', N'sdaf', 750, 600, 400)
INSERT [dbo].[Train] ([id], [TrainID], [TLQ], [TEQ], [TBQ], [company], [name], [Eprice], [Bprice], [Lprice]) VALUES (6, N'fasd', 34, 43, 34, N'dfg', N'sdf', 22, 22, 22)
SET IDENTITY_INSERT [dbo].[Train] OFF
/****** Object:  Table [dbo].[UserTable]    Script Date: 07/23/2017 03:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTable](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [text] NOT NULL,
	[UserPassword] [text] NOT NULL,
	[UserAddress] [text] NOT NULL,
	[UserCnic] [nvarchar](15) NOT NULL,
	[UserPicture] [image] NULL,
	[RoleID] [int] NOT NULL,
	[UserPhoneNo] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_UserTable] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserTable] ON
INSERT [dbo].[UserTable] ([UserID], [UserName], [UserPassword], [UserAddress], [UserCnic], [UserPicture], [RoleID], [UserPhoneNo]) VALUES (1, N'ali', N'abc123', N'malir', N'42501-8595180-3', NULL, 1, N'03070209053')
SET IDENTITY_INSERT [dbo].[UserTable] OFF
/****** Object:  Table [dbo].[Bus]    Script Date: 07/23/2017 03:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BusID] [nvarchar](50) NOT NULL,
	[TLQ] [int] NULL,
	[TEQ] [int] NULL,
	[TBQ] [int] NULL,
	[Company] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[Eprice] [int] NULL,
	[Bprice] [int] NULL,
	[Lprice] [int] NULL,
 CONSTRAINT [PK_Bus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bus] ON
INSERT [dbo].[Bus] ([id], [BusID], [TLQ], [TEQ], [TBQ], [Company], [name], [Eprice], [Bprice], [Lprice]) VALUES (1, N'dfds', 0, 44, 2, N'dfs', N'sdvf', 2, 1, 42)
SET IDENTITY_INSERT [dbo].[Bus] OFF
/****** Object:  StoredProcedure [dbo].[BookTicket]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[BookTicket]

@customer_id int,
@route_id int,
@no_of_seats int,
@class_type nvarchar(50),
@BookedDate text

AS
BEGIN

insert into Booking (customer_id,route_id,no_of_seats,class_type,BookedDate)
Values(@customer_id,@route_id,@no_of_seats,@class_type,@BookedDate)

End
GO
/****** Object:  StoredProcedure [dbo].[UpdateTrain]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateTrain]
@TrainID varchar(50),
@TLQ int,
@TEQ int,
@TBQ int,
@com varchar(50),
@name varchar(50),
@Lprice int,
@Bprice int,
@Eprice int,
@id int
as
begin
update  Train set TrainID=@TrainID,name=@name,TLQ=@TLQ,TEQ=@TEQ,TBQ=@TBQ,company=@com,Lprice=@Lprice,Bprice=@Bprice,Eprice=@Eprice
where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateEmpToAdmin]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateEmpToAdmin]

@EmpName nvarchar(20),
@EmpAddress nvarchar(30),
@EmpCnic nvarchar(15),
@EmpPhNo nvarchar(11),
@EmpSalery nvarchar(10),
@ID int,
@RoleID int

as
begin
  update Employee SET EmpName=@EmpName ,EmpAddress=@EmpAddress ,EmpCninc=@EmpCnic ,EmpPhNo=@EmpPhNo ,  EmpSalery=@EmpSalery ,RoleID=@RoleID
     
    where EmpID=@ID
    
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateData]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: SQLQuery5.sql|0|0|C:\Users\AliMasood\AppData\Local\Temp\~vs98E8.sql
CREATE proc [dbo].[UpdateData]

@EmpName nvarchar(20),
@EmpAddress nvarchar(30),
@EmpCnic nvarchar(15),
@EmpPhNo nvarchar(11),
@EmpEmail nvarchar(20),
@EmpSalery nvarchar(10),
@ID int

as
begin
  update Employee set EmpName=@EmpName ,EmpAddress=@EmpAddress ,EmpCninc=@EmpCnic ,EmpPhNo=@EmpPhNo ,EmpEmail=@EmpEmail
   ,EmpSalery=@EmpSalery where EmpID=@ID
   
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateCustData]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateCustData]

@CustName nvarchar(50),
@CustAdd nvarchar(50),
@CustCnic nvarchar(50),
@CustPhNo nvarchar(50),
@CustPPortNo nvarchar(50),
@ID int

as
begin
  update Customer set CustName=@CustName ,CustAdd=@CustAdd ,CustCnic=@CustCnic ,CustPhNo=@CustPhNo ,CustPPortNo=@CustPPortNo
    where CustID=@ID
   
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateBus]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateBus]
@BusID varchar(50),
@TLQ int,
@TEQ int,
@TBQ int,
@com varchar(50),
@name varchar(50),
@Lprice int,
@Bprice int,
@Eprice int,
@id int
as
begin
update  Bus set BusID=@BusID,name=@name,TLQ=@TLQ,TEQ=@TEQ,TBQ=@TBQ,company=@com,Lprice=@Lprice,Bprice=@Bprice,Eprice=@Eprice
where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateAirRoute]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateAirRoute]
@RouteID int,
@DDate nvarchar(50),
@Time text,
@CLoc nvarchar(50),
@Dloc nvarchar(50)
as
begin
update  Route set DepartDate=@DDate,DepartTime=@Time,CurrentLoc=@CLoc,DestinationLoc=@Dloc 
where id=@RouteID


end
GO
/****** Object:  StoredProcedure [dbo].[UpdateAirplane]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateAirplane]
@airid varchar(50),
@luxquota int,
@ecoquota int,
@busquota int,
@com varchar(50),
@name varchar(50),
@id int,
@Lprice int,
@Bprice int,
@Eprice int

as
begin
update  Airplane set airplane_id=@airid,name=@name,luxury_quota=@luxquota,economy_quota=@ecoquota,bussiness_quota=@busquota,company=@com,Lprice=@Lprice,Bprice=@Bprice,Eprice=@Eprice
where id=@id
 
end
GO
/****** Object:  StoredProcedure [dbo].[SelectTrain]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectTrain]
as
begin

select * from Train 
end
GO
/****** Object:  StoredProcedure [dbo].[SelectEmpForAdmin]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectEmpForAdmin]
as
begin
select e.EmpID from Employee e
where RoleID=2

end
GO
/****** Object:  StoredProcedure [dbo].[SelectEmp]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectEmp]
as

begin
select * from Employee 
inner join Role r on Employee.RoleID=r.RoleID
 
end
GO
/****** Object:  StoredProcedure [dbo].[SelectCust]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectCust]
as
begin

select * from Customer 
end
GO
/****** Object:  StoredProcedure [dbo].[SelectBus]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SelectBus]
as
begin

select * from Bus 
end
GO
/****** Object:  StoredProcedure [dbo].[SelectAirplane]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SelectAirplane]
as
begin

select * from Airplane 
end
GO
/****** Object:  StoredProcedure [dbo].[SelectAdmin1]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectAdmin1]
as
begin
select * from Employee where RoleID=1


 end
GO
/****** Object:  StoredProcedure [dbo].[SearchRpute]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[SearchRpute]
@departureDate nvarchar(50),
@departureTime text,
@currentLocation nvarchar(50),
@destinationLocation nvarchar(50),
@transportID varchar(50)
as
begin

select * from Route where DepartDate = @departureDate AND DepartTime LIKE @departureTime AND CurrentLoc = @currentLocation AND DestinationLoc = @destinationLocation AND transportID = @transportID
end
GO
/****** Object:  StoredProcedure [dbo].[SearchRoute]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SearchRoute]
@departureDate nvarchar(50),
@currentLocation nvarchar(50),
@destinationLocation nvarchar(50),
@transportID varchar(50),
@classType varchar(50),
@noOfSeats int

as
begin
 /*select * from Route where DepartDate = @departureDate AND CurrentLoc = @currentLocation AND DestinationLoc = @destinationLocation AND TransportType =@transportID*/

select *,(economy_quota - bookedSeats) as remaining from Route  
Inner JOIN Airplane on Airplane.airplane_id = Route.transportID
Inner JOIN (select route_id,Sum(no_of_seats)as bookedSeats from Booking
where class_type = @classType Group By route_id) as t2 on t2.route_id = Route.id
where
CurrentLoc = @currentLocation
AND DestinationLoc = @destinationLocation 
AND TransportType =@transportID
AND (economy_quota - bookedSeats) > @noOfSeats




end
GO
/****** Object:  StoredProcedure [dbo].[LoginProc]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LoginProc]
@UserName text,
@UserPassword text
AS
BEGIN

select r.Role,emp.EmpID from Employee emp
inner join  Role r on emp.RoleID=r.RoleID
where @UserName like emp.EmpName and @UserPassword like emp.[Password] 
end
GO
/****** Object:  StoredProcedure [dbo].[GetTrainByID]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetTrainByID]
@ID int
as
begin
select * from Train 
where id =@ID 
end
GO
/****** Object:  StoredProcedure [dbo].[GetRouteSelection]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetRouteSelection]
@ID int
as

begin

select * from Route
where id=@ID


end
GO
/****** Object:  StoredProcedure [dbo].[GetRouteID]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetRouteID]

as
begin

select * from Route
end
GO
/****** Object:  StoredProcedure [dbo].[GetEmpByID]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetEmpByID]
@ID int
as
begin
select * from Employee 
inner join Role on Employee.RoleID=Role.RoleID
where Employee.EmpID=@ID 
end
GO
/****** Object:  StoredProcedure [dbo].[GetCustByID]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetCustByID]
@ID int
as
begin 
select * from Customer where CustID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[GetBusByID]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[GetBusByID]
@ID int
as
begin
select * from Bus 
where id =@ID 
end
GO
/****** Object:  StoredProcedure [dbo].[GetBookingByID]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetBookingByID]
@ID int
as
begin
select * from Booking 
inner join Route r on r.id=Booking.id

where Booking.id=@ID

end
GO
/****** Object:  StoredProcedure [dbo].[GetBookID]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetBookID]
as
begin

select * from Booking
end
GO
/****** Object:  StoredProcedure [dbo].[GetAllValuesForBooking]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllValuesForBooking]
@routeID int
AS
BEGIN
	Select DepartDate,DepartTime,CurrentLoc,DestinationLoc,transportID,TransportType
from Route where id = @routeID
END
GO
/****** Object:  StoredProcedure [dbo].[GetAirByID]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAirByID]
@ID int
as
begin
select * from Airplane 
where id =@ID 
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteTrain]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[DeleteTrain]
@ID int
as
begin

delete  from Train where id=@ID


end
GO
/****** Object:  StoredProcedure [dbo].[DeleteTicket]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteTicket]
@ID int
as
begin
delete from Booking where id=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmp]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteEmp]
@ID int
as

begin

 delete  from Employee where EmpID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteCust]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteCust]
@ID int
as
begin
delete  from Customer where CustID=@ID
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteBus]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteBus]
@ID int
as
begin

delete  from Bus where id=@ID


end
GO
/****** Object:  StoredProcedure [dbo].[DeleteAirRoute]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DeleteAirRoute]
@RouteID int

as
begin
delete  from Route where id=@RouteID

end
GO
/****** Object:  StoredProcedure [dbo].[DeleteAirplane]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteAirplane]
@ID int
as
begin

delete  from Airplane where id=@ID


end
GO
/****** Object:  StoredProcedure [dbo].[CreateTrain]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CreateTrain]
@TrainID varchar(50),
@TLQ int,
@TEQ int,
@TBQ int,
@com varchar(50),
@name varchar(50),
@Lprice int,
@Bprice int,
@Eprice int
as
begin
insert into Train (TrainID,name,TLQ,TEQ,TBQ,company,Lprice,Bprice,Eprice)
Values(@TrainID,@name,@TLQ,@TEQ,@TBQ,@com,@Lprice,@Bprice,@Eprice)
end
GO
/****** Object:  StoredProcedure [dbo].[CreateRoute]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreateRoute]
@PlaneID varchar(50),
@DDate nvarchar(50),
@Time text,
@CLoc nvarchar(50),
@Dloc nvarchar(50),
@transportType varchar(50)
as
begin
insert into Route values (@DDate,@Time,@CLoc,@Dloc,@PlaneID,@transportType) 

end
GO
/****** Object:  StoredProcedure [dbo].[CreateEmp]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreateEmp]
@EmpName nvarchar(20),
@EmpAddress nvarchar(30),
@EmpCnic nvarchar(15),
@EmpPhNo nvarchar(11),
@EmpEmail nvarchar(20),
@EmpSalery nvarchar(10),
@Password nvarchar(40),
@RoleID int

as
begin
insert into Employee  (EmpName,EmpAddress,EmpCninc,EmpPhNo,EmpEmail,EmpSalery,[Password],RoleID)
Values(@EmpName,@EmpAddress,@EmpCnic,@EmpPhNo,@EmpEmail,@EmpSalery,@Password,@RoleID)
 
end
GO
/****** Object:  StoredProcedure [dbo].[CreateCust]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[CreateCust]
@CustName nvarchar(50),
@CustAdd nvarchar(50),
@CustCnic nvarchar(50),
@CustPhNo nvarchar(50),
@CustPPortNo nvarchar(50),
@EmpID int
as
begin
insert into Customer (CustName,CustAdd,CustCnic,CustPhNo,CustPPortNo,EmpID)
Values(@CustName,@CustAdd,@CustCnic,@CustPhNo,@CustPPortNo,@EmpID)


 
end
GO
/****** Object:  StoredProcedure [dbo].[CreateBus]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CreateBus]
@BusID varchar(50),
@TLQ int,
@TEQ int,
@TBQ int,
@com varchar(50),
@name varchar(50),
@Lprice int,
@Bprice int,
@Eprice int
as
begin
insert into Bus (BusID,name,TLQ,TEQ,TBQ,company,Lprice,Bprice,Eprice)
Values(@BusID,@name,@TLQ,@TEQ,@TBQ,@com,@Lprice,@Bprice,@Eprice)
end
GO
/****** Object:  StoredProcedure [dbo].[CreateAirplane]    Script Date: 07/23/2017 03:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CreateAirplane]
@airplane_id varchar(50),
@luxury_quota int,
@economy_quota int,
@bussiness_quota int,
@com varchar(50),
@name varchar(50),
@Lprice int,
@Bprice int,
@Eprice int
as
begin
insert into Airplane (airplane_id,name,luxury_quota,economy_quota,bussiness_quota,company,Lprice,Bprice,Eprice)
Values(@airplane_id,@name,@luxury_quota,@economy_quota,@bussiness_quota,@com,@Lprice,@Bprice,@Eprice)
end
GO
