
/**************************************************************
| Created By: Krishnraj Rana On 2019/06/01
| Purpose: update existing information of teacher.
**************************************************************/
CREATE PROCEDURE [dbo].[Proc_UpdateTeacher]
(
	@TeacherId INT,
	@Surname NVARCHAR(300),
	@TeacherName NVARCHAR(300),
	@TeacherFatherName NVARCHAR(300),
	@Gender NVARCHAR(20) = NULL,
	@Designation NVARCHAR(60) = NULL,
	@Qualification NVARCHAR(60) = NULL,
	@BirthDate DATE = NULL,
	@IsTeacherActive BIT = NULL
)
AS
BEGIN
	SET NOCOUNT ON;
	
		UPDATE dbo.TeacherMaster 
		SET
			Surname = @Surname
			,TeacherName = @TeacherName      
			,TeacherFatherName = @TeacherFatherName 
			,Gender =  @Gender
			,Designation = @Designation      
			,Qualification = @Qualification     
			,IsTeacherActive = @IsTeacherActive
		WHERE TeacherId = @TeacherId

END