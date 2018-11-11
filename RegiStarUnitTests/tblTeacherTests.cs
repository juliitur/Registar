using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using RegiStar.Model;

namespace RegiStarUnitTests
{
    [TestClass]
    public class tblTeacherTests

    {
        [TestMethod]
        public void WhenTeacherSet_shouldFullnameNotBeNull()
        { 
           tblTeacher teacher = new tblTeacher();

            Assert.IsNotNull(teacher);

            teacher.firstName = "John";
            teacher.lastName = "Doe";

            Assert.AreEqual("John Doe", teacher.fullName);
        }

        
    }
}
