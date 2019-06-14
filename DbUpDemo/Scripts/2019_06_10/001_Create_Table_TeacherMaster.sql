
CREATE TABLE [dbo].[TeacherMaster](
	[TeacherId] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [varchar](100) NULL,
	[TeacherName] [varchar](100) NULL,
	[TeacherFatherName] [varchar](100) NULL,
	[Gender] [nvarchar](10) NULL,
	[Designation] [nvarchar](30) NULL,
	[Qualification] [nvarchar](30) NULL,
	[BirthDate] [date] NULL,
	[IsTeacherActive] [bit] NULL,
	[EntryDate] [datetime] NOT NULL CONSTRAINT [DF_TeacherMaster_EntryDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_TeacherMaster] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO