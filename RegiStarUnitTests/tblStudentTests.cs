using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using RegiStar.Model;

namespace RegiStarUnitTests
{
    [TestClass]
    public class tblStudentsTests
    {
        [TestMethod]
        public void WhenStudentSet_shouldFullNameNotNull()
        {
            tblStudent student = new tblStudent();

            Assert.IsNotNull(student);

            student.firstName = "Nick";
            student.lastName = "Anderson";

            Assert.AreEqual("Nick Anderson", student.fullName);
        }
    }
}
