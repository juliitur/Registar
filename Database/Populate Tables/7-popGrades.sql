USE [wpfRegistar]
GO

INSERT INTO [dbo].[tblGrades]
           (
				[studentID],
				[courseID],
				[grade],
				[teacherComments]
		   )
     VALUES
			(
			1,
			2,
			65,
			'remarks'),
			(   1,
				1,
				75,
				'remarks')

GO


