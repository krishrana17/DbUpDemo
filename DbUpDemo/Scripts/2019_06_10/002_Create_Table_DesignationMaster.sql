
CREATE TABLE [dbo].[DesignationMaster](
	[DesignationId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_DesignationMaster_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_MemberShipType] PRIMARY KEY CLUSTERED 
(
	[DesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO