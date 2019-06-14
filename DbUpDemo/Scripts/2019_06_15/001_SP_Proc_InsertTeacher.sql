
/**************************************************************
| Created By: Krishnraj Rana On 2019/06/01
| Purpose: Add new information of teacher.
**************************************************************/
CREATE PROCEDURE [dbo].[Proc_InsertTeacher]
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
	
	IF NOT EXISTS(SELECT 1 FROM dbo.TeacherMaster WHERE Surname = @Surname AND TeacherName = @TeacherName)
	BEGIN
			
		INSERT INTO dbo.TeacherMaster
		(
			Surname,
			TeacherName,
			TeacherFatherName,
			Gender,
			Designation,
			Qualification,
			BirthDate,
			IsTeacherActive
		)
		VALUES
		(
			@Surname
			,@TeacherName 
			,@TeacherFatherName
			,@Gender
			,@Designation 
			,@Qualification 
			,@BirthDate
			,@IsTeacherActive
		)

		SET @TeacherId = SCOPE_IDENTITY();
	END
	ELSE
	BEGIN
		RAISERROR('Teacher already exists', 16, -1)
		RETURN;
	END
	
END