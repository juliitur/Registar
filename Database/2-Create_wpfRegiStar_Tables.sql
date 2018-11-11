/* Create Tables for wpfRegiStar 
	Script date: 18-10-2018
	By: Iulii Turenco, Alexander Figueiras, Alexei Mostovoi
*/

USE wpfRegistar
;
go

IF OBJECT_ID('tblUsers', 'U') is not null
DROP TABLE tblUsers
;
go

CREATE TABLE tblUsers
(
	userID INT IDENTITY(1, 1) NOT NULL,
    password NVARCHAR(30) NOT NULL,
	userAccess INT NOT NULL,
	CONSTRAINT pk_userID PRIMARY KEY clustered (userID ASC)
)
;
go


IF OBJECT_ID('tblStudents', 'U') is not null
DROP TABLE tblStudents
;
go

CREATE TABLE tblStudents
(
	studentID INT IDENTITY(1, 1) NOT NULL,
	userID INT NOT NULL,							 -- Foreign key (tblUsers)		
	firstName NVARCHAR(20) NOT NULL,
    lastName NVARCHAR(20) NOT NULL,
    dob DATE NOT Null,
    joinDate DATE NOT NULL,
    address NVARCHAR(60) NOT NULL,
    city NVARCHAR(15) NOT NULL,
    region NVARCHAR(15) NOT NULL,
    postalCode NVARCHAR(10) NOT NULL,
    country NVARCHAR(15) NOT NULL,
    phone NVARCHAR(15) NOT NULL,
	email NVARCHAR(30) NOT NULL,
    status BIT NULL,	
	CONSTRAINT pk_studentID PRIMARY KEY clustered (studentID ASC)
)
;
go

IF OBJECT_ID('tblTeachers', 'U') is not null
DROP TABLE tblTeachers
;
go

CREATE TABLE tblTeachers
(
	teacherID INT IDENTITY(1, 1) NOT NULL,
	userID INT NOT NULL,							 -- Foreign key (tblUsers)	
	firstName NVARCHAR(20) NOT NULL,
    lastName NVARCHAR(20) NOT NULL,
    dob DATE NOT Null,
    joinDate DATE NOT NULL,
    address NVARCHAR(60) NOT NULL,
    city NVARCHAR(15) NOT NULL,
    region NVARCHAR(15) NOT NULL,
    postalCode NVARCHAR(10) NOT NULL,
    country NVARCHAR(15) NOT NULL,
    phone NVARCHAR(15) NOT NULL,
	email NVARCHAR(30) NOT NULL,
    status BIT NULL,
	CONSTRAINT pk_teacherID PRIMARY KEY clustered (teacherID ASC)
)
;
go

IF OBJECT_ID('tblAttendances', 'U') is not null
DROP TABLE tblAttendances
;
go

CREATE TABLE tblAttendances
(
	attendanceID INT IDENTITY(1, 1) NOT NULL,
	attendanceDate Date NOT NULL,
	studentID INT NOT NULL, 									 -- Foreign key (tblStudents)
	courseID INT NOT NULL,  									 -- Foreign key (tblCourses)
	status BIT NOT NULL,
	remarks NVARCHAR(250) NULL
	CONSTRAINT pk_attendanceID PRIMARY KEY clustered (attendanceID ASC)
)
;
go

IF OBJECT_ID('tblGrades', 'U') is not null
DROP TABLE tblGrades
;
go

CREATE TABLE tblGrades
(
	gradeID INT IDENTITY(1, 1) NOT NULL,
	studentID INT NOT NULL, 									 -- Foreign key (tblStudents)
	courseID INT NOT NULL,  									 -- Foreign key (tblCourses)
	grade INT NOT NULL,
	teacherComments NVARCHAR(250) NULL,
	CONSTRAINT pk_gradeID PRIMARY KEY CLUSTERED (gradeID ASC)
)
;
go

IF OBJECT_ID('tblCourses', 'U') is not null
DROP TABLE tblCourses
;
go

CREATE TABLE tblCourses
(
	courseID INT IDENTITY(1, 1) NOT NULL,
	name NVARCHAR(45) NOT NULL,
	description NVARCHAR(250) NULL,
	isbn INT NOT NULL,  									-- Foreign key (tblBooks)
	teacherID INT NOT NULL,    								-- Foreign key (tblTeachers)
	section CHAR(2) NOT NULL,
	CONSTRAINT pk_courseID PRIMARY KEY CLUSTERED (courseID ASC)
)
;
go

IF OBJECT_ID('tblCourseDetails', 'U') is not null
DROP TABLE tblCourseDetails
;
go

CREATE TABLE tblCourseDetails
(
	courseDetail INT IDENTITY(1, 1) NOT NULL,
	courseID INT NOT NULL,  						-- Foreign key (tblCourses)
	start DATETIME NOT NULL,
	finish DATETIME NOT NULL,
	CONSTRAINT pk_courseDetail PRIMARY KEY CLUSTERED (courseDetail ASC)
)
;
go

IF OBJECT_ID('tblClassRoomStudents', 'U') is not null
DROP TABLE tblClassRoomStudents
;
go

CREATE TABLE tblClassRoomStudents
(
	courseID INT NOT NULL,										-- Foreign key (tblCourses)
	studentID INT NOT Null 										-- Foreign key (tblStudents)
	CONSTRAINT pk_courseID_studentID PRIMARY KEY (courseID, studentID)
)
;
go

IF OBJECT_ID('tblBooks', 'U') is not null
DROP TABLE tblBooks
;
go

CREATE TABLE tblBooks
(
	isbn INT IDENTITY(1, 1) NOT NULL,
	title NVARCHAR(50) NOT NULL,
	author NVARCHAR(50) NOT NULL,				
	synopsis NVARCHAR(250) NULL, 									
	CONSTRAINT pk_isbn PRIMARY KEY CLUSTERED (isbn ASC)
)
;
go