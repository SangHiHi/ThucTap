USE [master]
GO
/****** Object:  Database [ThucTap]    Script Date: 26/05/2020 5:50:37 CH ******/
CREATE DATABASE [ThucTap]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ThucTap', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ThucTap.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ThucTap_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ThucTap_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ThucTap] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ThucTap].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ThucTap] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ThucTap] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ThucTap] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ThucTap] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ThucTap] SET ARITHABORT OFF 
GO
ALTER DATABASE [ThucTap] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ThucTap] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ThucTap] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ThucTap] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ThucTap] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ThucTap] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ThucTap] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ThucTap] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ThucTap] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ThucTap] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ThucTap] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ThucTap] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ThucTap] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ThucTap] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ThucTap] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ThucTap] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ThucTap] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ThucTap] SET RECOVERY FULL 
GO
ALTER DATABASE [ThucTap] SET  MULTI_USER 
GO
ALTER DATABASE [ThucTap] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ThucTap] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ThucTap] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ThucTap] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ThucTap] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ThucTap', N'ON'
GO
ALTER DATABASE [ThucTap] SET QUERY_STORE = OFF
GO
USE [ThucTap]
GO
/****** Object:  Table [dbo].[account]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone] [nchar](10) NOT NULL,
	[pw] [nvarchar](max) NOT NULL,
	[role] [bit] NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ballot_request]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ballot_request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[accid] [int] NOT NULL,
	[type] [bit] NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[daycreate] [datetime] NULL,
	[status] [tinyint] NOT NULL,
	[active] [bit] NULL,
 CONSTRAINT [PK_ballot_request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 

INSERT [dbo].[account] ([id], [name], [email], [phone], [pw], [role], [active]) VALUES (1, N'Nguyễn Ngọc Sáng', N'sang.nn281@aptechlearning.edu.vn', N'0868946944', N'Aa12345678', 1, 1)
INSERT [dbo].[account] ([id], [name], [email], [phone], [pw], [role], [active]) VALUES (3, N'Nguyễn Thị Huỳnh Như', N'nhu.nth1273@aptechlearning.edu.vn', N'0345345633', N'Aa12345678', 0, 1)
INSERT [dbo].[account] ([id], [name], [email], [phone], [pw], [role], [active]) VALUES (4, N'Nguyễn Quang Bình', N'b.nq124@aptechlearning.edu.vn', N'0987654321', N'Aa12345678', 0, 1)
INSERT [dbo].[account] ([id], [name], [email], [phone], [pw], [role], [active]) VALUES (5, N'name test 2', N'emailtest2@gmail.com', N'0987654322', N'Aa12345678', 0, 1)
INSERT [dbo].[account] ([id], [name], [email], [phone], [pw], [role], [active]) VALUES (6, N'name test 3', N'emailtest3@gmail.com', N'0987654323', N'Aa12345678', 0, 1)
INSERT [dbo].[account] ([id], [name], [email], [phone], [pw], [role], [active]) VALUES (7, N'name test 4', N'emailtest4@gmail.com', N'0987654324', N'Aa12345678', 0, 1)
INSERT [dbo].[account] ([id], [name], [email], [phone], [pw], [role], [active]) VALUES (8, N'name test 1', N'emailtest1@gmail.com', N'0987654321', N'Aa12345678', 0, 1)
INSERT [dbo].[account] ([id], [name], [email], [phone], [pw], [role], [active]) VALUES (9, N'name test 5', N'emailtest5@gmail.com', N'0987654321', N'Aa12345678', 0, 1)
INSERT [dbo].[account] ([id], [name], [email], [phone], [pw], [role], [active]) VALUES (10, N'name test 6', N'emailtest6@gmail.com', N'1111111111', N'Aa12345678', 0, 1)
INSERT [dbo].[account] ([id], [name], [email], [phone], [pw], [role], [active]) VALUES (11, N'name test 7', N'emailtest7@gmail.com', N'4444444444', N'Aa12345678', 0, 1)
INSERT [dbo].[account] ([id], [name], [email], [phone], [pw], [role], [active]) VALUES (12, N'D Ace', N'ace11@aptechlearning.edu.vn', N'1010101011', N'Aa12345678', 0, 1)
SET IDENTITY_INSERT [dbo].[account] OFF
GO
SET IDENTITY_INSERT [dbo].[ballot_request] ON 

INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (1, 3, 1, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (2, 4, 0, N'Yêu cầu bảo trì', N'Nội dùng yêu cầu bảo trì', CAST(N'2020-05-22T13:29:49.673' AS DateTime), 1, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (3, 5, 0, N'Yêu cầu bảo trì', N'Nội dung yêu cầu bảo trì', CAST(N'2020-05-22T13:30:23.243' AS DateTime), 2, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (4, 6, 1, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T13:30:41.710' AS DateTime), 1, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (5, 7, 0, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T16:17:59.660' AS DateTime), 1, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (6, 8, 1, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (7, 9, 0, N'Yêu cầu bảo trì', N'Nội dùng yêu cầu bảo trì', CAST(N'2020-05-22T13:29:49.673' AS DateTime), 0, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (8, 10, 0, N'Yêu cầu bảo trì', N'Nội dung yêu cầu bảo trì', CAST(N'2020-05-22T13:30:23.243' AS DateTime), 1, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (9, 3, 1, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T13:30:41.710' AS DateTime), 2, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (10, 4, 0, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T16:17:59.660' AS DateTime), 0, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (11, 5, 1, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (12, 6, 0, N'Yêu cầu bảo trì', N'Nội dùng yêu cầu bảo trì', CAST(N'2020-05-22T13:29:49.673' AS DateTime), 2, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (13, 7, 0, N'Yêu cầu bảo trì', N'Nội dung yêu cầu bảo trì', CAST(N'2020-05-22T13:30:23.243' AS DateTime), 0, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (14, 8, 1, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T13:30:41.710' AS DateTime), 1, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (15, 9, 0, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T16:17:59.660' AS DateTime), 2, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (16, 10, 1, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (17, 11, 0, N'Yêu cầu bảo trì', N'Nội dùng yêu cầu bảo trì', CAST(N'2020-05-22T13:29:49.673' AS DateTime), 2, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (18, 12, 0, N'Yêu cầu bảo trì', N'Nội dung yêu cầu bảo trì', CAST(N'2020-05-22T13:30:23.243' AS DateTime), 1, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (19, 4, 1, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T13:30:41.710' AS DateTime), 0, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (20, 5, 0, N'Yêu cầu sửa chửa', N'Nội dung yêu cầu sửa chửa', CAST(N'2020-05-22T16:17:59.660' AS DateTime), 1, 1)
INSERT [dbo].[ballot_request] ([id], [accid], [type], [title], [content], [daycreate], [status], [active]) VALUES (22, 5, 0, N'bảo trì cho tui cái nhà', N'<p>Nhà bị hư OKKKKKKKKK</p>', CAST(N'2020-05-25T11:58:24.890' AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[ballot_request] OFF
GO
ALTER TABLE [dbo].[account] ADD  CONSTRAINT [DF_account_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[ballot_request] ADD  CONSTRAINT [DF_ballot_request_daycreate]  DEFAULT (getdate()) FOR [daycreate]
GO
ALTER TABLE [dbo].[ballot_request]  WITH CHECK ADD  CONSTRAINT [FK_ballot_request_account] FOREIGN KEY([accid])
REFERENCES [dbo].[account] ([id])
GO
ALTER TABLE [dbo].[ballot_request] CHECK CONSTRAINT [FK_ballot_request_account]
GO
/****** Object:  StoredProcedure [dbo].[GetAccount]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--GetAccount
CREATE proc [dbo].[GetAccount]
@page int,
@rows int
as
begin
	declare @start int
	set @start=(@page*@rows)-@rows
	SELECT * FROM account WHERE active=1 ORDER BY id OFFSET @start ROWS FETCH NEXT @rows ROWS ONLY
end
GO
/****** Object:  StoredProcedure [dbo].[GetBallot]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetBallot]
@page int,
@rows int
as
begin
	declare @start int
	set @start=(@page*@rows)-@rows
	SELECT ballot_request.*,[name] AccName FROM ballot_request,account WHERE ballot_request.accid=account.id and ballot_request.active=1 ORDER BY id desc OFFSET @start ROWS FETCH NEXT @rows ROWS ONLY
end

GO
/****** Object:  StoredProcedure [dbo].[GetByIdAccount]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--GetByIdAccount
CREATE proc [dbo].[GetByIdAccount]
@id int
as
begin
	SELECT * FROM account WHERE id=@id
end

GO
/****** Object:  StoredProcedure [dbo].[GetByIdBallot]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--GetByIdBallot
CREATE proc [dbo].[GetByIdBallot]
@id int
as
begin
	SELECT ballot_request.*,[name] AccName FROM ballot_request,account WHERE ballot_request.id=@id and ballot_request.accid=account.id
end
GO
/****** Object:  StoredProcedure [dbo].[GetByIdUserBallot]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetByIdUserBallot]
@id int
as
begin
	SELECT ballot_request.*,[name] AccName FROM ballot_request,account WHERE account.id=@id and ballot_request.accid=account.id and ballot_request.active=1 order by ballot_request.id desc
end
GO
/****** Object:  StoredProcedure [dbo].[GetRowBallot]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetRowBallot]
as
begin
	SELECT COUNT(*) FROM ballot_request where ballot_request.active=1
end

GO
/****** Object:  StoredProcedure [dbo].[GetRowBallotByUserId]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetRowBallotByUserId]
@user_id int
as
begin
	SELECT COUNT(*) FROM ballot_request WHERE accid=@user_id and ballot_request.active=1
end
GO
/****** Object:  StoredProcedure [dbo].[InsertAccount]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Create account
CREATE proc [dbo].[InsertAccount]
@name nvarchar(50),
@email nvarchar(100),
@phone nchar(10),
@pw nvarchar(MAX),
@role bit
as
begin
	if exists (SELECT * FROM account WHERE email=@email and phone=@phone)
		begin
			return 0;
		end
	else
		begin
			INSERT INTO account([name],email,phone,pw,[role]) VALUES(@name,@email,@phone,@pw,@role)
			declare @result int
			SELECT @result=CAST(SCOPE_IDENTITY() as int)
			return @result
		end
end
GO
/****** Object:  StoredProcedure [dbo].[InsertBallot]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertBallot]
@acc_id int,
@type bit,
@title nvarchar(100),
@content nvarchar(MAX),
@status tinyint
as
begin
	INSERT INTO ballot_request(accid,[type],title,content,daycreate,[status],active) 
	VALUES (@acc_id,@type,@title,@content,GETDATE(),@status,1)
	SELECT CAST(SCOPE_IDENTITY() as int)
end
GO
/****** Object:  StoredProcedure [dbo].[LoginAccount]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Login
CREATE proc [dbo].[LoginAccount]
@email nvarchar(100),
@pw nvarchar(MAX)
as
begin
	if exists (SELECT * FROM account WHERE email=@email AND pw=@pw)
	begin
		SELECT * FROM account WHERE email=@email AND pw=@pw
	end
end
GO
/****** Object:  StoredProcedure [dbo].[RemoveAccount]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Remove account
CREATE proc [dbo].[RemoveAccount]
@id int
as 
begin
	UPDATE account SET active=0
end
GO
/****** Object:  StoredProcedure [dbo].[RemoveBallot]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[RemoveBallot]
@id int
as
begin
	UPDATE ballot_request set active=0 where id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateAccount]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Update account
CREATE proc [dbo].[UpdateAccount]
@id int,
@name nvarchar(50),
@email nvarchar(100),
@phone nchar(10),
@pw nvarchar(MAX),
@role bit
as
begin
if exists (SELECT * FROM account WHERE id=@id and (email=@email or phone=@phone))
		begin
			return 0;
		end
	else
		begin
			UPDATE account set [name] = @name, email=@email, phone=@phone, pw=@pw, [role]=@role WHERE id=@id
			return 1;
		end
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateBallot]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Update ballot
CREATE proc [dbo].[UpdateBallot]
@id int,
@type bit,
@title nvarchar(100),
@content nvarchar(MAX)
as
begin
	UPDATE ballot_request SET [type]=@type, title=@title, content=@content WHERE id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateStatusBallot]    Script Date: 26/05/2020 5:50:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Update status ballot
CREATE proc [dbo].[UpdateStatusBallot]
@id int,
@status tinyint
as
begin
	UPDATE ballot_request SET [status]=@status WHERE id=@id
end
GO
USE [master]
GO
ALTER DATABASE [ThucTap] SET  READ_WRITE 
GO
