USE [master]
GO
/****** Object:  Database [VTSDb]    Script Date: 04-03-2025 22:25:58 ******/
CREATE DATABASE [VTSDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VTSDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VTSDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VTSDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VTSDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VTSDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VTSDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VTSDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VTSDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VTSDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VTSDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VTSDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [VTSDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VTSDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VTSDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VTSDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VTSDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VTSDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VTSDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VTSDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VTSDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VTSDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VTSDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VTSDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VTSDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VTSDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VTSDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VTSDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VTSDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VTSDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VTSDb] SET  MULTI_USER 
GO
ALTER DATABASE [VTSDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VTSDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VTSDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VTSDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VTSDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VTSDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [VTSDb] SET QUERY_STORE = OFF
GO
USE [VTSDb]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 04-03-2025 22:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[DeviceID] [int] IDENTITY(1,1) NOT NULL,
	[DeviceName] [nvarchar](50) NULL,
	[DeviceType] [nvarchar](50) NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Master]    Script Date: 04-03-2025 22:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Master](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[MobileNumber] [nvarchar](100) NULL,
	[Organozation] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Location] [nvarchar](100) NULL,
	[Photopath] [nvarchar](100) NULL,
 CONSTRAINT [PK_User_Master] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Vehicle]    Script Date: 04-03-2025 22:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Vehicle](
	[VehicleNumber] [nvarchar](50) NOT NULL,
	[VehicleType] [nvarchar](50) NULL,
	[ChassisNumber] [nvarchar](50) NULL,
	[EngineNumber] [nvarchar](50) NULL,
	[ManufacturingYear] [int] NULL,
	[LoadCarryingCapacity] [decimal](18, 2) NULL,
	[Make] [nvarchar](50) NULL,
	[Model] [nchar](10) NULL,
	[BodyType] [nvarchar](50) NULL,
	[OrganisationName] [nvarchar](50) NULL,
	[DeviceID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_User_Vehicle] PRIMARY KEY CLUSTERED 
(
	[VehicleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Device] ON 

INSERT [dbo].[Device] ([DeviceID], [DeviceName], [DeviceType]) VALUES (1, N'GT06N', N'GPS Tracker')
INSERT [dbo].[Device] ([DeviceID], [DeviceName], [DeviceType]) VALUES (2, N'VTS-1000', N'Vehicle Tracker')
INSERT [dbo].[Device] ([DeviceID], [DeviceName], [DeviceType]) VALUES (3, N'ProTrack 360', N'Vehicle Tracker')
SET IDENTITY_INSERT [dbo].[Device] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Master] ON 

INSERT [dbo].[User_Master] ([UserID], [Name], [MobileNumber], [Organozation], [Address], [Email], [Location], [Photopath]) VALUES (1, N'vrushali', N'7741838738', N'Raintree', N'Baramati', N'vrushali@gmail.com', N'Pune', N'kwkd')
INSERT [dbo].[User_Master] ([UserID], [Name], [MobileNumber], [Organozation], [Address], [Email], [Location], [Photopath]) VALUES (2, N'Komal', N'4578963255', N'Raintree', N'Baramati', N'Komal@gmail.com', N'Pune', N'string.jpg')
SET IDENTITY_INSERT [dbo].[User_Master] OFF
GO
INSERT [dbo].[User_Vehicle] ([VehicleNumber], [VehicleType], [ChassisNumber], [EngineNumber], [ManufacturingYear], [LoadCarryingCapacity], [Make], [Model], [BodyType], [OrganisationName], [DeviceID], [UserID]) VALUES (N'ABC123', N'Truck', N'1234567890', N'ENG12345', 2010, CAST(15000.50 AS Decimal(18, 2)), N'Ford', N'F150      ', N'Pickup', N'XYZ Logistics', 1, 2)
INSERT [dbo].[User_Vehicle] ([VehicleNumber], [VehicleType], [ChassisNumber], [EngineNumber], [ManufacturingYear], [LoadCarryingCapacity], [Make], [Model], [BodyType], [OrganisationName], [DeviceID], [UserID]) VALUES (N'ABC124', N'Truck', N'1234567891', N'ENG12354', 2021, CAST(15000.51 AS Decimal(18, 2)), N'Ford', N'F150      ', N'Pickup', N'XYZ Logistics', 1, 2)
GO
ALTER TABLE [dbo].[User_Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_User_Vehicle_User_Vehicle] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([DeviceID])
GO
ALTER TABLE [dbo].[User_Vehicle] CHECK CONSTRAINT [FK_User_Vehicle_User_Vehicle]
GO
ALTER TABLE [dbo].[User_Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_User_Vehicle_User_Vehicle1] FOREIGN KEY([UserID])
REFERENCES [dbo].[User_Master] ([UserID])
GO
ALTER TABLE [dbo].[User_Vehicle] CHECK CONSTRAINT [FK_User_Vehicle_User_Vehicle1]
GO
USE [master]
GO
ALTER DATABASE [VTSDb] SET  READ_WRITE 
GO
