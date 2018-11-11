USE [wpfRegistar]
GO

INSERT INTO [dbo].[tblStudents]
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
           (2,
           'John',
           'Snow',
           '10/10/10',
           '10/10/10',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '514-123-4567',
           'Fake@IFake.com'),
		   (3,
           'Paul',
           'Deer',
           '10/10/10',
           '10/10/10',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '514-123-4567',
           'Fake@IFake.com'),
		   (4,
           'Mike',
           'wazowski',
           '10/10/10',
           '10/10/10',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '514-123-4567',
           'Fake@IFake.com'),
		   (5,
           'Maria',
           'Abrantes',
           '10/10/10',
           '10/10/10',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '123 Fake',
           '514-123-4567',
           'Fake@IFake.com'),
		   (6,
           'Joe',
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