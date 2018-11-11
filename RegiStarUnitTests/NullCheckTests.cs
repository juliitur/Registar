using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using RegiStar.Model;

namespace RegiStarUnitTests
{
    [TestClass]
    public class NullCheckTests
    {
        [TestMethod]
        public void ChecktblAttendance()
        {
            tblAttendance attendance = new tblAttendance();
            attendance.courseID = 10;

            Assert.IsNotNull(attendance);
            Assert.AreEqual(10, attendance.courseID);
        }

        [TestMethod]
        public void ChecktblBook()
        {
            tblBook book = new tblBook();
            book.author = "Johnson";

            Assert.IsNotNull(book);
            Assert.AreEqual("Johnson", book.author);
        }

        [TestMethod]
        public void ChecktblCours()
        {
            tblCours cours = new tblCours();
            cours.name = "Mathematics";

            Assert.IsNotNull(cours);
            Assert.AreEqual("Mathematics", cours.name);
        }

        [TestMethod]
        public void ChecktblGrade()
        {
            tblGrade grade = new tblGrade();
            grade.gradeID = 20;

            Assert.IsNotNull(grade);
            Assert.AreEqual(20, grade.gradeID);
        }

        [TestMethod]
        public void ChecktblUser()
        {
            tblUser user = new tblUser();
            user.password = "hello";

            Assert.IsNotNull(user);
            Assert.AreEqual("hello", user.password);
        }
    }
}
