if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tblDepartment]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_tblDepartment]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tblEmployee]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_tblEmployee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tblLogin]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_tblLogin]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tblResume]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_tblResume]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_tblWorking]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_tblWorking]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblAttendance]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblAttendance]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblDepartment]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblDepartment]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblEmp]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblEmp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblEmployee]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblEmployee]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblLeave]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblLeave]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblLogin]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblLogin]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblResume]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblResume]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tblWorkingDays]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblWorkingDays]
GO

CREATE TABLE [dbo].[tblAttendance] (
	[AttendanceID] [int] IDENTITY (1, 1) NOT NULL ,
	[EmpNo] [int] NOT NULL ,
	[CreateDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblDepartment] (
	[DeptNo] [int] IDENTITY (1, 1) NOT NULL ,
	[DeptName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LOC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblEmp] (
	[Id] [int] IDENTITY (1, 1) NOT NULL ,
	[EmpId] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EmpName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblEmployee] (
	[EmpNo] [int] IDENTITY (1, 1) NOT NULL ,
	[UserName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Password] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[UserType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MiddleName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LastName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FatherName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DOJ] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SkillSet] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DeptNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[JobTitle] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Basic] [float] NULL ,
	[CAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[State] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PinCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Gender] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MartialStatus] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Spouse] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EmailID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Phone] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Company] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[AccountNo] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblLeave] (
	[LeaveID] [int] IDENTITY (1, 1) NOT NULL ,
	[SickLeave] [numeric](18, 0) NOT NULL ,
	[CascualLeave] [numeric](18, 0) NOT NULL ,
	[MedicalLeave] [numeric](18, 0) NOT NULL ,
	[LossOfPay] [numeric](18, 0) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblLogin] (
	[LoginID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Password] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[EmpType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[EmpNo] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Skill] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblResume] (
	[ResumeID] [int] IDENTITY (1, 1) NOT NULL ,
	[FirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MiddleName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[LastName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[DOB] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Gender] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[CurrentAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[PermanentAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[PinCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[State] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Email] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Phone] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Years] [int] NOT NULL ,
	[Months] [int] NOT NULL ,
	[FunctionalArea] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Industry] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[KeySkills] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ResumeHeadLine] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Qualification] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Specialization] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Percentage] [int] NOT NULL ,
	[Attachment] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tblWorkingDays] (
	[WorkingDaysID] [int] IDENTITY (1, 1) NOT NULL ,
	[WMonth] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[WYear] [int] NULL ,
	[WorkingDays] [int] NULL ,
	[Holidays] [int] NULL 
) ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create Procedure sp_tblDepartment
(	
	@DeptNo int=0 output,
	@DeptName varchar(50)=null,
	@LOC varchar(50)=null,
	@Type char(1)=null
	
)
AS
begin
		if(@Type='I')
	
		begin
			if not exists(select * from tblDepartment where DeptName=@DeptName)
			begin
				Insert into tblDepartment(DeptName,LOC) values(@DeptName,@LOC) 
			end
		end
	
		if(@Type='U')
		begin
				Update tblDepartment set DeptName=@DeptName,LOC=@LOC where DeptNo=@DeptNo
		end
		if(@Type='D')
		begin
				DELETE FROM tblDepartment where DeptNo=@DeptNo
		end

		if(@Type='A')
		begin
				select * from tblDepartment
		end
		if(@Type='B')
		begin
				select * from tblDepartment where DeptNo=@DeptNo 
		end
	

end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure sp_tblEmployee
(
	@EmpNo int=0 output,
	@UserName varchar(50)=null,
	@Password varchar(50)=null,
	@UserType varchar(50)=null,
 	@FirstName varchar(50)=null,
 	@MiddleName varchar(50)=null,
 	@LastName varchar(50)=null,
	@FatherName varchar(50)=null,
 	@DOB varchar(50)=null,
	@DOJ varchar(50)=null,
	@SkillSet varchar(50)=null,
	@DeptNo varchar(50)=null,
	@JobTitle varchar(50)=null,
	@Basic float=0,
 	@CurrentAddress varchar(50)=null,
 	@PermanentAddress  varchar(50)=null,
 	@City varchar(50)=null,
 	@State varchar(50)=null,
 	@Country varchar(50)=null,
 	@PinCode varchar(50)=null,
 	@Gender varchar(50)=null,
	@MartialStatus varchar(50)=null,
	@Spouse varchar(50)=null,
 	@EmailID varchar(50)=null,
 	@Phone varchar(50)=null,
	@Company varchar(50)=null,
	@AccountNo int=0,	 
	@Type char(1)= null
)
As
begin
	if(@Type='I')
	begin
		if not exists(select * from tblEmployee where FirstName=@FirstName)
		begin	
			INSERT INTO tblEmployee
                      	(UserName, Password, UserType, FirstName, MiddleName, LastName, FatherName, DOB, DOJ, SkillSet, DeptNo, JobTitle, Basic, CAddress, PAddress, 
                      	City, State, Country, PinCode, Gender, MartialStatus, EmailID, Spouse, Phone, Company, AccountNo)
			VALUES     (@UserName,@Password,@UserType,@FirstName,@MiddleName,@LastName,@FatherName,@DOB,@DOJ,@SkillSet,@DeptNo,@JobTitle,@Basic,@CurrentAddress,@PermanentAddress,@City,@State,@Country,@PinCode,@Gender,@MartialStatus,@Spouse,@EmailID,@Phone,@Company,@AccountNo)
		end
	end

	if(@Type='U')
		begin
			UPDATE    tblEmployee SET UserName=@UserName, Password=@Password, UserType=@UserType, FirstName=@FirstName, MiddleName=@MiddleName, LastName=@LastName, FatherName=@FatherName, DOB=@DOB, DOJ=@DOJ, SkillSet=@SkillSet, DeptNo=@DeptNo, JobTitle=@JobTitle, Basic=@Basic, CAddress=@CurrentAddress, PAddress=@PermanentAddress, 
                      	City=@City, State=@State, Country=@Country, PinCode=@PinCode, Gender=@Gender, MartialStatus=@MartialStatus, EmailID=@EmailID, Spouse=@Spouse, Phone=@Phone, Company=@Company, AccountNo=@AccountNo where EmpNo=@EmpNo
		end	
	if(@Type='D')
		begin
			DELETE FROM tblEmployee where EmpNo=@EmpNo 
		end

	if(@Type='A')
		begin
			select * from tblEmployee 
		end

	if(@Type='B')
		begin
			select * from tblEmployee where EmpNo=@EmpNo
		end
	if(@Type='G')
		begin
			select * from tblEmployee where UserName=@UserName
		end
	if(@Type='x')
	begin
		UPDATE    tblEmployee
	        SET            SkillSet=@SkillSet where EmpNo=@EmpNo 
	end

	if(@Type='Z')
	begin
		UPDATE    tblEmployee
	        SET              Password =@Password where EmpNo=@EmpNo 
	end


end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

create Procedure sp_tblLogin
(@LoginID int=0 output,
@UserName varchar(50)=null,
@Password varchar(50)=null,
@EmpType varchar(50)=null,
@EmpNo varchar(50)=null,
@Skill varchar(50)=null,
@Type char(1)=null)
as
begin
	if(@Type='G')
begin
	select * from tblLogin
end
end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE Procedure sp_tblResume
(
	@ResumeID int=0 output,
 	@FirstName varchar(50)=null,
 	@MiddleName varchar(50)=null,
 	@LastName varchar(50)=null,
 	@DOB varchar(50)=null,
 	@Gender varchar(50)=null,
 	@CurrentAddress varchar(50)=null,
 	@PermanentAddress  varchar(50)=null,
 	@City varchar(50)=null,
 	@PinCode varchar(50)=null,
 	@State varchar(50)=null,
 	@Country varchar(50)=null,
 	@Email varchar(50)=null,
 	@Phone varchar(50)=null,
 	@Years int=0,
 	@Months int=0,
 	@FunctionalArea varchar(50)=null,
 	@Industry varchar(50)=null,
 	@KeySkills varchar(50)=null,
 	@ResumeHeadLine varchar(50)=null,
 	@Qualification varchar(50)=null,
 	@Specialization varchar(50)=null,
 	@Percentage int=0,
	@Attachment varchar(50)=null,
	@Type char(1)= null
)
As
begin
	if(@Type='A')
		begin
			select * from tblResume 
		end

	if(@Type='I')
	begin	
		INSERT INTO tblResume
                      (FirstName, MiddleName, LastName, DOB, Gender, CurrentAddress, PermanentAddress, City, PinCode, State, Country, Email, Phone, Years, Months, 
                      FunctionalArea, Industry, KeySkills, ResumeHeadLine, Qualification, Specialization, Percentage, Attachment)
		VALUES     (@FirstName,@MiddleName,@LastName,@DOB,@Gender,@CurrentAddress,@PermanentAddress,@City,@PinCode,@State,@Country,@Email,@Phone,@Years,@Months,@FunctionalArea,@Industry,@KeySkills,@ResumeHeadLine,@Qualification,@Specialization,@Percentage,@Attachment)

	end

	if(@Type='B')
		begin
			select * from tblResume where ResumeID=@ResumeID
		end

end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

Create Procedure sp_tblWorking
(	
	@WorkingDaysID int=0 output,
	@WMonth varchar(50)=null,
	@WYear int=0,
	@WorkingDays int=0,
	@Holidays int=0,
	@Type char(1)=null
	
)
AS
begin
		if(@Type='I')
	
		begin
			if not exists(select * from tblWorkingDays where WorkingDaysID=@WorkingDaysID)
			begin
				Insert into tblWorkingDays(WMonth,WYear,WorkingDays,Holidays) values(@WMonth,@WYear,@WorkingDays,@Holidays) 
			end
		end
	
		if(@Type='U')
		begin
				Update tblWorkingDays set WMonth=@WMonth,WYear=@WYear,WorkingDays=@WorkingDays,Holidays=@Holidays where WorkingDaysID=@WorkingDaysID
		end
		if(@Type='D')
		begin
				DELETE FROM tblWorkingDays where WorkingDaysID=@WorkingDaysID
		end

		if(@Type='A')
		begin
				select * from tblWorkingDays
		end
		if(@Type='B')
		begin
				select * from tblWorkingDays where WorkingDaysID=@WorkingDaysID 
		end
	

end

GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

