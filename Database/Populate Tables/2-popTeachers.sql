USE [wpfRegistar]
GO

INSERT INTO [dbo].[tblTeachers]
           ([userID]
           ,[firstName]
           ,[lastName]
           ,[dob]
           ,[joinDate]
           ,[address]
           ,[city]
           ,[region]
           ,[postalCode]
           ,[country]
           ,[phone]
           ,[email])
     VALUES
           (1,
           'Alexander',
           'Figueiras',
           '10/10/10',
           '10/10/10',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '514-123-4567',
           'Fake@IFake.com')
GO


