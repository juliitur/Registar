USE [wpfRegistar]
GO

INSERT INTO [dbo].[tblAttendances]
           (
				[attendanceDate],
				[studentID],
				[courseID],
				[status],
				[remarks]
		   )
     VALUES
			('2018/01/02',
			1,
			1,
			1,
			'remarks'),
			('2018/01/02',
			1,
			2,
			1,
			'remarks')

GO

