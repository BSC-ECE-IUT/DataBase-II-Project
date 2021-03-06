USE [Gym]
GO
/****** Object:  Table [dbo].[Mas_Branch]    Script Date: 1/24/20 10:13:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mas_Branch](
	[Branch_ID] [int] NOT NULL,
	[Branch_address] [varchar](50) NOT NULL,
	[Branch_province] [varchar](50) NOT NULL,
	[Branch_region] [varchar](50) NOT NULL,
	[Branch_phone] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Mas_Branch] PRIMARY KEY CLUSTERED 
(
	[Branch_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mas_Course]    Script Date: 1/24/20 10:13:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mas_Course](
	[Course_ID] [int] NOT NULL,
	[Emp_ID] [int] NOT NULL,
	[Course_type] [int] NOT NULL,
	[Course_price] [int] NOT NULL,
	[Course_usage_limit] [int] NULL,
	[Branch_ID] [int] NULL,
	[Course_day_of_week] [int] NULL,
	[Course_start_time] [time](7) NULL,
	[Course_end_time] [time](7) NULL,
 CONSTRAINT [PK_Mas_Course] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mas_Customer]    Script Date: 1/24/20 10:13:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mas_Customer](
	[Cust_ID] [int] NOT NULL,
	[Cust_fname] [varchar](50) NOT NULL,
	[Cust_lname] [varchar](50) NOT NULL,
	[Cust_username] [varchar](50) NOT NULL,
	[Cust_password] [varchar](50) NOT NULL,
	[Cust_gender] [varchar](50) NOT NULL,
	[Cust_birthdate] [date] NOT NULL,
	[Cust_membership] [varchar](50) NOT NULL,
	[Cust_email] [varchar](50) NULL,
	[Cust_mobile] [varchar](50) NULL,
	[Cust_registerdate] [date] NOT NULL,
 CONSTRAINT [PK_Mas_Customer] PRIMARY KEY CLUSTERED 
(
	[Cust_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mas_Employee]    Script Date: 1/24/20 10:13:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mas_Employee](
	[Emp_ID] [int] NOT NULL,
	[Emp_fname] [varchar](50) NOT NULL,
	[Emp_lname] [varchar](50) NOT NULL,
	[Emp_username] [varchar](50) NOT NULL,
	[Emp_password] [varchar](50) NOT NULL,
	[Emp_gender] [varchar](50) NOT NULL,
	[Emp_birthdate] [date] NOT NULL,
	[Emp_salary] [int] NOT NULL,
	[Emp_email] [varchar](50) NULL,
	[Emp_mobile] [varchar](50) NULL,
	[Emp_position] [varchar](50) NOT NULL,
	[Branch_ID] [int] NOT NULL,
 CONSTRAINT [PK_Mas_Employee] PRIMARY KEY CLUSTERED 
(
	[Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mas_Equipment]    Script Date: 1/24/20 10:13:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mas_Equipment](
	[Equip_ID] [int] NOT NULL,
	[Equip_model] [varchar](50) NOT NULL,
	[Equip_serial] [varchar](50) NOT NULL,
	[Equip_status] [int] NOT NULL,
	[Order_ID] [int] NOT NULL,
	[Branch_ID] [int] NULL,
 CONSTRAINT [PK_Mas_Equipment] PRIMARY KEY CLUSTERED 
(
	[Equip_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tran_Enrollment]    Script Date: 1/24/20 10:13:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tran_Enrollment](
	[Enroll_ID] [int] NOT NULL,
	[Cust_ID] [int] NOT NULL,
	[Course_ID] [int] NOT NULL,
	[Enroll_date] [date] NOT NULL,
 CONSTRAINT [PK_Tran_Enrollment] PRIMARY KEY CLUSTERED 
(
	[Enroll_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tran_Maintenance]    Script Date: 1/24/20 10:13:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tran_Maintenance](
	[Main_ID] [int] NOT NULL,
	[Equip_ID] [int] NOT NULL,
	[Emp_ID] [int] NOT NULL,
	[Main_date] [date] NOT NULL,
	[Main_cost] [int] NOT NULL,
	[Main_type] [int] NOT NULL,
 CONSTRAINT [PK_Tran_Maintenance] PRIMARY KEY CLUSTERED 
(
	[Main_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tran_Order]    Script Date: 1/24/20 10:13:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tran_Order](
	[Order_ID] [int] NOT NULL,
	[Emp_ID] [int] NOT NULL,
	[Order_date] [date] NOT NULL,
	[Order_price] [int] NOT NULL,
	[Order_receivedDate] [date] NULL,
 CONSTRAINT [PK_Tran_Order] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tran_Payment]    Script Date: 1/24/20 10:13:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tran_Payment](
	[Pay_ID] [int] NOT NULL,
	[Cust_ID] [int] NOT NULL,
	[Emp_ID] [int] NOT NULL,
	[Pay_date] [date] NOT NULL,
	[Pay_time] [time](7) NOT NULL,
	[Pay_method] [int] NOT NULL,
	[Enroll_ID] [int] NOT NULL,
	[Pay_amount] [int] NOT NULL,
 CONSTRAINT [PK_Tran_Payment] PRIMARY KEY CLUSTERED 
(
	[Pay_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tran_Usage_Record]    Script Date: 1/24/20 10:13:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tran_Usage_Record](
	[Usage_ID] [int] NOT NULL,
	[Cust_ID] [int] NOT NULL,
	[Course_ID] [int] NOT NULL,
	[Usage_date] [date] NOT NULL,
	[Usage_time] [time](7) NOT NULL,
	[Branch_ID] [int] NOT NULL,
 CONSTRAINT [PK_Tran_Usage_Record] PRIMARY KEY CLUSTERED 
(
	[Usage_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mas_Course]  WITH CHECK ADD  CONSTRAINT [FK_Mas_Course_Mas_Branch] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[Mas_Branch] ([Branch_ID])
GO
ALTER TABLE [dbo].[Mas_Course] CHECK CONSTRAINT [FK_Mas_Course_Mas_Branch]
GO
ALTER TABLE [dbo].[Mas_Course]  WITH CHECK ADD  CONSTRAINT [FK_Mas_Course_Mas_Employee] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Mas_Employee] ([Emp_ID])
GO
ALTER TABLE [dbo].[Mas_Course] CHECK CONSTRAINT [FK_Mas_Course_Mas_Employee]
GO
ALTER TABLE [dbo].[Mas_Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Mas_Equipment_Mas_Branch] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[Mas_Branch] ([Branch_ID])
GO
ALTER TABLE [dbo].[Mas_Equipment] CHECK CONSTRAINT [FK_Mas_Equipment_Mas_Branch]
GO
ALTER TABLE [dbo].[Tran_Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Tran_Enrollment_Mas_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Mas_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Tran_Enrollment] CHECK CONSTRAINT [FK_Tran_Enrollment_Mas_Course]
GO
ALTER TABLE [dbo].[Tran_Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Tran_Enrollment_Mas_Customer] FOREIGN KEY([Cust_ID])
REFERENCES [dbo].[Mas_Customer] ([Cust_ID])
GO
ALTER TABLE [dbo].[Tran_Enrollment] CHECK CONSTRAINT [FK_Tran_Enrollment_Mas_Customer]
GO
ALTER TABLE [dbo].[Tran_Maintenance]  WITH CHECK ADD  CONSTRAINT [FK_Tran_Maintenance_Mas_Employee] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Mas_Employee] ([Emp_ID])
GO
ALTER TABLE [dbo].[Tran_Maintenance] CHECK CONSTRAINT [FK_Tran_Maintenance_Mas_Employee]
GO
ALTER TABLE [dbo].[Tran_Maintenance]  WITH CHECK ADD  CONSTRAINT [FK_Tran_Maintenance_Mas_Equipment] FOREIGN KEY([Equip_ID])
REFERENCES [dbo].[Mas_Equipment] ([Equip_ID])
GO
ALTER TABLE [dbo].[Tran_Maintenance] CHECK CONSTRAINT [FK_Tran_Maintenance_Mas_Equipment]
GO
ALTER TABLE [dbo].[Tran_Order]  WITH CHECK ADD  CONSTRAINT [FK_Tran_Order_Mas_Employee] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Mas_Employee] ([Emp_ID])
GO
ALTER TABLE [dbo].[Tran_Order] CHECK CONSTRAINT [FK_Tran_Order_Mas_Employee]
GO
ALTER TABLE [dbo].[Tran_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Tran_Payment_Mas_Customer] FOREIGN KEY([Cust_ID])
REFERENCES [dbo].[Mas_Customer] ([Cust_ID])
GO
ALTER TABLE [dbo].[Tran_Payment] CHECK CONSTRAINT [FK_Tran_Payment_Mas_Customer]
GO
ALTER TABLE [dbo].[Tran_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Tran_Payment_Mas_Employee] FOREIGN KEY([Emp_ID])
REFERENCES [dbo].[Mas_Employee] ([Emp_ID])
GO
ALTER TABLE [dbo].[Tran_Payment] CHECK CONSTRAINT [FK_Tran_Payment_Mas_Employee]
GO
ALTER TABLE [dbo].[Tran_Payment]  WITH CHECK ADD  CONSTRAINT [FK_Tran_Payment_Tran_Enrollment] FOREIGN KEY([Enroll_ID])
REFERENCES [dbo].[Tran_Enrollment] ([Enroll_ID])
GO
ALTER TABLE [dbo].[Tran_Payment] CHECK CONSTRAINT [FK_Tran_Payment_Tran_Enrollment]
GO
ALTER TABLE [dbo].[Tran_Usage_Record]  WITH CHECK ADD  CONSTRAINT [FK_Tran_Usage_Record_Mas_Branch] FOREIGN KEY([Branch_ID])
REFERENCES [dbo].[Mas_Branch] ([Branch_ID])
GO
ALTER TABLE [dbo].[Tran_Usage_Record] CHECK CONSTRAINT [FK_Tran_Usage_Record_Mas_Branch]
GO
ALTER TABLE [dbo].[Tran_Usage_Record]  WITH CHECK ADD  CONSTRAINT [FK_Tran_Usage_Record_Mas_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Mas_Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Tran_Usage_Record] CHECK CONSTRAINT [FK_Tran_Usage_Record_Mas_Course]
GO
ALTER TABLE [dbo].[Tran_Usage_Record]  WITH CHECK ADD  CONSTRAINT [FK_Tran_Usage_Record_Mas_Customer] FOREIGN KEY([Cust_ID])
REFERENCES [dbo].[Mas_Customer] ([Cust_ID])
GO
ALTER TABLE [dbo].[Tran_Usage_Record] CHECK CONSTRAINT [FK_Tran_Usage_Record_Mas_Customer]
GO
