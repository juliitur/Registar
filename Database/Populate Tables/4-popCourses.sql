USE [wpfRegistar]
GO

INSERT INTO [dbo].[tblCourses]
           ([name]
           ,[description]
           ,[isbn]
           ,[teacherID]
           ,[section])
     VALUES
			('Mathematics',
			'Intro to Mathematics',
			5,
			1,
			'01'),
			('Economics',
			'Intro to Economics',
			3,
			1,
			'01')
GO


