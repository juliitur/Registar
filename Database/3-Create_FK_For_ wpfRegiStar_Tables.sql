/* Create Tables for wpfRegiStar 
	Script date: 18-10-2018
	By: Iulii Turenco, Alexander Figueiras, Alexei Mostovoi
*/

USE wpfRegistar
;
go


/*
 * Creating foreign keys for tblCourses
 */
ALTER TABLE tblCourses
	ADD CONSTRAINT Fk_tblCourses_tblBooks FOREIGN KEY (isbn)
	 REFERENCES tblBooks (isbn)
	 ;
	 GO

ALTER TABLE tblCourses
	ADD CONSTRAINT Fk_tblCourses_tblTeachers FOREIGN KEY (teacherID)
	 REFERENCES tblTeachers (teacherID)
	 ;
	 GO

/*
 * Creating foreign key with UserID for tblTeachers and tblStudents
 */
ALTER TABLE tblStudents
	ADD CONSTRAINT Fk_tblStudents_tblUsers FOREIGN KEY (userID)
	 REFERENCES tblUsers (userID)
	 ;
	 GO

ALTER TABLE tblTeachers
	ADD CONSTRAINT Fk_tblTeachers_tblUsers FOREIGN KEY (userID)
	 REFERENCES tblUsers (userID)
	 ;
	 GO

/*
 * Creating foreign key with studentID in tblClassRoomStudents, tblAttendances and in tblGrades
 */
ALTER TABLE tblClassRoomStudents
	ADD CONSTRAINT Fk_tblClassRoomStudents_tblStudents FOREIGN KEY (studentID)
	 REFERENCES tblStudents (studentID)
	 ;
	 GO

ALTER TABLE tblAttendances
	ADD CONSTRAINT Fk_tblAttendances_tblStudents FOREIGN KEY (studentID)
	 REFERENCES tblStudents (studentID)
	 ;
	 GO

ALTER TABLE tblGrades
	ADD CONSTRAINT Fk_tblGrades_tblStudents FOREIGN KEY (studentID)
	 REFERENCES tblStudents (studentID)
	 ;
	 GO


/*
 * Creating foreign key with courseID in tblClassRoomStudents, tblAttendances and in tblCourseDetails 
 */
ALTER TABLE tblClassRoomStudents
	ADD CONSTRAINT Fk_tblClassRoomStudents_tblCourses FOREIGN KEY (courseID)
	 REFERENCES tblCourses (courseID)
	 ;
	 GO

ALTER TABLE tblAttendances
	ADD CONSTRAINT Fk_tblAttendances_tblCourses FOREIGN KEY (courseID)
	 REFERENCES tblCourses (courseID)
	 ;
	 GO

ALTER TABLE tblCourseDetails
	ADD CONSTRAINT Fk_tblCourseDetails_tblCourses FOREIGN KEY (courseID)
	 REFERENCES tblCourses (courseID)
	 ;
	 GO

ALTER TABLE tblGrades
	ADD CONSTRAINT Fk_tblGrades_tblCourses FOREIGN KEY (courseID)
	 REFERENCES tblCourses (courseID)
	 ;
	 GO
