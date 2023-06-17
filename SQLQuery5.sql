USE [SchoolWebsite]
GO
/****** Object:  StoredProcedure [dbo].[FetcMasterAdmin_sp]    Script Date: 17-06-2023 16:17:23 ******/
DROP PROCEDURE [dbo].[FetcMasterAdmin_sp]
GO
/****** Object:  StoredProcedure [dbo].[FetchFrontEnd_sp]    Script Date: 17-06-2023 16:17:23 ******/
DROP PROCEDURE [dbo].[FetchFrontEnd_sp]
GO
/****** Object:  Table [dbo].[SchoolSport_tbl]    Script Date: 17-06-2023 16:17:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SchoolSport_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[SchoolSport_tbl]
GO
/****** Object:  Table [dbo].[SchoolInfra_tbl]    Script Date: 17-06-2023 16:17:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SchoolInfra_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[SchoolInfra_tbl]
GO
/****** Object:  Table [dbo].[SchoolExtraCurri_tbl]    Script Date: 17-06-2023 16:17:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SchoolExtraCurri_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[SchoolExtraCurri_tbl]
GO
/****** Object:  Table [dbo].[SchoolClass_tbl]    Script Date: 17-06-2023 16:17:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SchoolClass_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[SchoolClass_tbl]
GO
/****** Object:  Table [dbo].[School_Basic_Details_tbl]    Script Date: 17-06-2023 16:17:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[School_Basic_Details_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[School_Basic_Details_tbl]
GO
/****** Object:  Table [dbo].[School_Application_tbl]    Script Date: 17-06-2023 16:17:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[School_Application_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[School_Application_tbl]
GO
/****** Object:  Table [dbo].[Enquiry_tbl]    Script Date: 17-06-2023 16:17:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enquiry_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[Enquiry_tbl]
GO
/****** Object:  Table [dbo].[AdmissionDoc_tbl]    Script Date: 17-06-2023 16:17:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdmissionDoc_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[AdmissionDoc_tbl]
GO
/****** Object:  Table [dbo].[Admission_tbl]    Script Date: 17-06-2023 16:17:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Admission_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[Admission_tbl]
GO
/****** Object:  Table [dbo].[AboutUs_tbl]    Script Date: 17-06-2023 16:17:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AboutUs_tbl]') AND type in (N'U'))
DROP TABLE [dbo].[AboutUs_tbl]
GO
/****** Object:  Table [dbo].[AboutUs_tbl]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutUs_tbl](
	[AboutId] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](200) NULL,
	[Description1] [varchar](max) NULL,
	[Description2] [varchar](max) NULL,
	[Description3] [varchar](max) NULL,
	[Description4] [varchar](max) NULL,
	[Image] [varchar](max) NULL,
 CONSTRAINT [PK_AboutUs_tbl] PRIMARY KEY CLUSTERED 
(
	[AboutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admission_tbl]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admission_tbl](
	[ApplicationId] [bigint] IDENTITY(1,1) NOT NULL,
	[ApplicantName] [varchar](300) NULL,
	[ApplicantGender] [varchar](50) NULL,
	[DOB] [date] NULL,
	[ClassId] [bigint] NULL,
	[Fathername] [varchar](300) NULL,
	[MotherName] [varchar](300) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Pin] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[PaymentStatus] [varchar](50) NULL,
	[PaidOn] [datetime] NULL,
	[ApplicationStatus] [varchar](50) NULL,
	[AppliedById] [bigint] NULL,
	[Email] [varchar](150) NULL,
 CONSTRAINT [PK_Admission_tbl] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdmissionDoc_tbl]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdmissionDoc_tbl](
	[DocId] [bigint] IDENTITY(1,1) NOT NULL,
	[Doc1] [varchar](max) NULL,
	[Doc2] [varchar](max) NULL,
	[Doc3] [varchar](max) NULL,
	[Doc4] [varchar](max) NULL,
	[Doc5] [varchar](max) NULL,
	[Doc6] [varchar](max) NULL,
	[UserId] [bigint] NULL,
	[ApplicationId] [bigint] NULL,
 CONSTRAINT [PK_AdmissionDoc_tbl] PRIMARY KEY CLUSTERED 
(
	[DocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enquiry_tbl]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enquiry_tbl](
	[EnquiryId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
	[Email] [varchar](150) NULL,
	[Phone] [varchar](50) NULL,
	[Subject] [varchar](200) NULL,
	[Message] [varchar](max) NULL,
 CONSTRAINT [PK_Enquiry_tbl] PRIMARY KEY CLUSTERED 
(
	[EnquiryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[School_Application_tbl]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School_Application_tbl](
	[Admission_Application_Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ClassId] [bigint] NULL,
	[Session] [varchar](200) NULL,
	[Application_Start_Date] [date] NULL,
	[Application_End_Date] [date] NULL,
	[ApplicationFee] [decimal](18, 2) NULL,
	[Seat] [bigint] NULL,
 CONSTRAINT [PK_School_Application_tbl] PRIMARY KEY CLUSTERED 
(
	[Admission_Application_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[School_Basic_Details_tbl]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School_Basic_Details_tbl](
	[SchoolId] [bigint] IDENTITY(1,1) NOT NULL,
	[SchoolBoard] [varchar](200) NULL,
	[InstituteCode] [varchar](50) NULL,
	[InstituteName] [varchar](300) NULL,
	[PrimaryContactNumber] [varchar](50) NULL,
	[AlternativeContactNumber] [varchar](50) NULL,
	[EmailId] [varchar](200) NULL,
	[Password] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Image] [varchar](max) NULL,
	[Website] [varchar](300) NULL,
 CONSTRAINT [PK_School_Basic_Details_tbl] PRIMARY KEY CLUSTERED 
(
	[SchoolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolClass_tbl]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolClass_tbl](
	[ClassId] [bigint] IDENTITY(1,1) NOT NULL,
	[ClassName] [varchar](50) NULL,
 CONSTRAINT [PK_SchoolClass_tbl] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolExtraCurri_tbl]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolExtraCurri_tbl](
	[ExtraCurriId] [bigint] IDENTITY(1,1) NOT NULL,
	[ExtraCurriName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_SchoolExtraCurri_tbl] PRIMARY KEY CLUSTERED 
(
	[ExtraCurriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolInfra_tbl]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolInfra_tbl](
	[InfraId] [bigint] IDENTITY(1,1) NOT NULL,
	[InfraName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_SchoolInfra_tbl] PRIMARY KEY CLUSTERED 
(
	[InfraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolSport_tbl]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolSport_tbl](
	[SportId] [bigint] IDENTITY(1,1) NOT NULL,
	[SportName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_SchoolSport_tbl] PRIMARY KEY CLUSTERED 
(
	[SportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AboutUs_tbl] ON 
GO
INSERT [dbo].[AboutUs_tbl] ([AboutId], [Title], [Description1], [Description2], [Description3], [Description4], [Image]) VALUES (1, N'About Right Admission', N'Admissions are a very difficult process, both for institutions and parents. It is impractical for institutions to reach out to parents, who are equally confused and are desperately looking for suitable educational providers for their children. Keeping in mind, the problem faced by both parties, we have developed a website and mobile application, wherein the mammoth task of finding suitable institutions becomes much easier for an eligible candidate.', N'Right Admission Plus helps find better schools,colleges,universities and tutors for your children, to enable their bright future. Explore a comprehensive list of Indian institutions and programmes, all in one place. You will also be able to access career opportunities and personality development courses for students.', N'In addition to providing suitable admissions, we have also attached you to available vendors for providing all kinds of institutional requirements for day to day purpose like books, stationary, uniforms, printing and advertisement materials and digital marketing etc.', N'Right Admission Plus has an efficient and smooth management system, further accessible through the mobile application, which can be used to manage and understand the institute digitally. The Institute Management System(IMS) is very useful for both educational institutes as well as parents and students.', N'/DataImages/SchoolImages/item_0_20230615221535564.png')
GO
SET IDENTITY_INSERT [dbo].[AboutUs_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Enquiry_tbl] ON 
GO
INSERT [dbo].[Enquiry_tbl] ([EnquiryId], [Name], [Email], [Phone], [Subject], [Message]) VALUES (1, N'test', N'test@gmail.com', N'8048372049', N'abc', N'xyz')
GO
INSERT [dbo].[Enquiry_tbl] ([EnquiryId], [Name], [Email], [Phone], [Subject], [Message]) VALUES (2, N'test', N'test@gmail.com', N'8048372040', N'abc', N'xyz')
GO
SET IDENTITY_INSERT [dbo].[Enquiry_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[School_Application_tbl] ON 
GO
INSERT [dbo].[School_Application_tbl] ([Admission_Application_Id], [ClassId], [Session], [Application_Start_Date], [Application_End_Date], [ApplicationFee], [Seat]) VALUES (1, 3, N'2023-2025', CAST(N'2023-06-01' AS Date), CAST(N'2023-06-30' AS Date), CAST(200.00 AS Decimal(18, 2)), 100)
GO
INSERT [dbo].[School_Application_tbl] ([Admission_Application_Id], [ClassId], [Session], [Application_Start_Date], [Application_End_Date], [ApplicationFee], [Seat]) VALUES (2, 4, N'2023-2026', CAST(N'2023-06-17' AS Date), CAST(N'2023-06-30' AS Date), CAST(500.00 AS Decimal(18, 2)), 50)
GO
SET IDENTITY_INSERT [dbo].[School_Application_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[School_Basic_Details_tbl] ON 
GO
INSERT [dbo].[School_Basic_Details_tbl] ([SchoolId], [SchoolBoard], [InstituteCode], [InstituteName], [PrimaryContactNumber], [AlternativeContactNumber], [EmailId], [Password], [Address], [Image], [Website]) VALUES (1, N'State Board', N'73057655', N'SBOA School and Junior College', N'95525 12934', N'2255889901', N'admin@gmail.com', N'12345', N'Hyderabad, Telangana, India', N'/DataImages/SchoolImages/item_0_20230616000820139.jpg', N'https://www.rightadmissionplus.com')
GO
SET IDENTITY_INSERT [dbo].[School_Basic_Details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[SchoolClass_tbl] ON 
GO
INSERT [dbo].[SchoolClass_tbl] ([ClassId], [ClassName]) VALUES (3, N'Class I')
GO
INSERT [dbo].[SchoolClass_tbl] ([ClassId], [ClassName]) VALUES (4, N'Class II')
GO
INSERT [dbo].[SchoolClass_tbl] ([ClassId], [ClassName]) VALUES (5, N'Class III')
GO
INSERT [dbo].[SchoolClass_tbl] ([ClassId], [ClassName]) VALUES (6, N'Class IV')
GO
INSERT [dbo].[SchoolClass_tbl] ([ClassId], [ClassName]) VALUES (7, N'Class V')
GO
INSERT [dbo].[SchoolClass_tbl] ([ClassId], [ClassName]) VALUES (8, N'Class VI')
GO
INSERT [dbo].[SchoolClass_tbl] ([ClassId], [ClassName]) VALUES (9, N'Class VII')
GO
INSERT [dbo].[SchoolClass_tbl] ([ClassId], [ClassName]) VALUES (10, N'Class VIII')
GO
INSERT [dbo].[SchoolClass_tbl] ([ClassId], [ClassName]) VALUES (11, N'Class IX')
GO
INSERT [dbo].[SchoolClass_tbl] ([ClassId], [ClassName]) VALUES (12, N'Class X')
GO
SET IDENTITY_INSERT [dbo].[SchoolClass_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[SchoolExtraCurri_tbl] ON 
GO
INSERT [dbo].[SchoolExtraCurri_tbl] ([ExtraCurriId], [ExtraCurriName], [IsActive]) VALUES (2, N'Art and craft', 1)
GO
INSERT [dbo].[SchoolExtraCurri_tbl] ([ExtraCurriId], [ExtraCurriName], [IsActive]) VALUES (3, N'Nature environment activities', 1)
GO
INSERT [dbo].[SchoolExtraCurri_tbl] ([ExtraCurriId], [ExtraCurriName], [IsActive]) VALUES (4, N'Dance', 0)
GO
INSERT [dbo].[SchoolExtraCurri_tbl] ([ExtraCurriId], [ExtraCurriName], [IsActive]) VALUES (5, N'Debate', 1)
GO
INSERT [dbo].[SchoolExtraCurri_tbl] ([ExtraCurriId], [ExtraCurriName], [IsActive]) VALUES (6, N'Music', 1)
GO
INSERT [dbo].[SchoolExtraCurri_tbl] ([ExtraCurriId], [ExtraCurriName], [IsActive]) VALUES (7, N'Drama', 0)
GO
INSERT [dbo].[SchoolExtraCurri_tbl] ([ExtraCurriId], [ExtraCurriName], [IsActive]) VALUES (8, N'Picnics excursion', 1)
GO
INSERT [dbo].[SchoolExtraCurri_tbl] ([ExtraCurriId], [ExtraCurriName], [IsActive]) VALUES (9, N'Annual sports', 1)
GO
INSERT [dbo].[SchoolExtraCurri_tbl] ([ExtraCurriId], [ExtraCurriName], [IsActive]) VALUES (10, N'Annual exhibition', 1)
GO
INSERT [dbo].[SchoolExtraCurri_tbl] ([ExtraCurriId], [ExtraCurriName], [IsActive]) VALUES (11, N'Annual cultural program', 1)
GO
SET IDENTITY_INSERT [dbo].[SchoolExtraCurri_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[SchoolInfra_tbl] ON 
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (1, N'Smart classes', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (2, N'WIFI', 0)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (3, N'CCTV', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (4, N'GPS bus tracking system', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (5, N'Playground', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (6, N'Auditorium', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (7, N'Cafeteria', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (8, N'Library', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (9, N'Laboratories', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (10, N'Elevators', 0)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (11, N'Boys hostel', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (12, N'Girls hostel', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (13, N'School bus', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (14, N'Day boarding', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (15, N'Meals', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (16, N'Medical room', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (17, N'AC classes', 1)
GO
INSERT [dbo].[SchoolInfra_tbl] ([InfraId], [InfraName], [IsActive]) VALUES (19, N'Playground', 1)
GO
SET IDENTITY_INSERT [dbo].[SchoolInfra_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[SchoolSport_tbl] ON 
GO
INSERT [dbo].[SchoolSport_tbl] ([SportId], [SportName], [IsActive]) VALUES (1, N'Yoga', 1)
GO
INSERT [dbo].[SchoolSport_tbl] ([SportId], [SportName], [IsActive]) VALUES (3, N'Outdoor sports', 1)
GO
INSERT [dbo].[SchoolSport_tbl] ([SportId], [SportName], [IsActive]) VALUES (4, N'Swimming pool', 0)
GO
INSERT [dbo].[SchoolSport_tbl] ([SportId], [SportName], [IsActive]) VALUES (5, N'Martial Art', 0)
GO
INSERT [dbo].[SchoolSport_tbl] ([SportId], [SportName], [IsActive]) VALUES (6, N'Gymnasium', 1)
GO
SET IDENTITY_INSERT [dbo].[SchoolSport_tbl] OFF
GO
/****** Object:  StoredProcedure [dbo].[FetchFrontEnd_sp]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FetchFrontEnd_sp]
		@Condition1 varchar(200)=null,
		@Condition2 varchar(200)=null,
		@Condition3 varchar(200)=null,
		@Condition4 varchar(200)=null,
		@Condition5 varchar(200)=null,
		@Condition6 varchar(200)=null,
		@Condition7 varchar(200)=null,
		@Condition8 varchar(200)=null,
		@Condition9 varchar(200)=null,
		@OnTable varchar(100)=null
AS

if(@OnTable = 'FetchAdmission')

begin
select Admission_Application_Id,ClassId,CONVERT(varchar(15),Application_Start_Date,106) Application_Start_Date,
CONVERT(varchar(15),Application_End_Date,106) Application_End_Date,ApplicationFee,
Session,Seat,(select ClassName from SchoolClass_tbl where ClassId=m.ClassId) ClassName
from School_Application_tbl m
end
GO
/****** Object:  StoredProcedure [dbo].[FetcMasterAdmin_sp]    Script Date: 17-06-2023 16:17:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[FetcMasterAdmin_sp]
		@Condition1 varchar(200)=null,
		@Condition2 varchar(200)=null,
		@Condition3 varchar(200)=null,
		@Condition4 varchar(200)=null,
		@Condition5 varchar(200)=null,
		@Condition6 varchar(200)=null,
		@Condition7 varchar(200)=null,
		@Condition8 varchar(200)=null,
		@Condition9 varchar(200)=null,
		@OnTable varchar(100)=null
AS

if(@OnTable = 'ChangeInfrastructureStatus')

begin

declare @statusInfra bit
set @statusInfra = (select IsActive from SchoolInfra_tbl where InfraId = @Condition1)


if(@statusInfra = 1)
begin
update SchoolInfra_tbl 
set IsActive = 0 where InfraId = @Condition1
end
else
begin
update SchoolInfra_tbl 
set IsActive = 1 where InfraId = @Condition1
end
end

else if(@OnTable = 'DeleteInfrastructure')

begin
delete from SchoolInfra_tbl where InfraId = @Condition1
end
------------------------------
if(@OnTable = 'ChangeExtraCurriStatus')

begin

declare @statusExtraCurri bit
set @statusExtraCurri = (select IsActive from SchoolExtraCurri_tbl where ExtraCurriId = @Condition1)


if(@statusExtraCurri = 1)
begin
update SchoolExtraCurri_tbl 
set IsActive = 0 where ExtraCurriId = @Condition1
end
else
begin
update SchoolExtraCurri_tbl 
set IsActive = 1 where ExtraCurriId = @Condition1
end
end

else if(@OnTable = 'DeleteExtraCurri')

begin
delete from SchoolExtraCurri_tbl where ExtraCurriId = @Condition1
end
-----------------------------
if(@OnTable = 'ChangeSportStatus')

begin

declare @statusSport bit
set @statusSport = (select IsActive from SchoolSport_tbl where SportId = @Condition1)


if(@statusSport = 1)
begin
update SchoolSport_tbl 
set IsActive = 0 where SportId = @Condition1
end
else
begin
update SchoolSport_tbl 
set IsActive = 1 where SportId = @Condition1
end
end

else if(@OnTable = 'DeleteSport')

begin
delete from SchoolSport_tbl where SportId = @Condition1
end

else if(@OnTable = 'DeleteClass')

begin
delete from SchoolClass_tbl where ClassId = @Condition1
end

else if(@OnTable = 'FetchEnquiry')

begin
select * from Enquiry_tbl
end

else if(@OnTable = 'FetchAdmission')

begin
select Admission_Application_Id,ClassId,Application_Start_Date,Application_End_Date,ApplicationFee,
Session,Seat,(select ClassName from SchoolClass_tbl where ClassId=m.ClassId) ClassName
from School_Application_tbl m
end
GO
