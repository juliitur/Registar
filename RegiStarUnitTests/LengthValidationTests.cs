using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using RegiStar.Validation;
using System.Globalization;
using System.Windows.Controls;

namespace RegiStarUnitTests
{
    [TestClass]
    public class LengthValidationT
    {
        [TestMethod]
        public void CheckForMinValue()
        {
            LengthValidation lengthValidation = new LengthValidation();

            lengthValidation.Min = 3;
            
            ValidationResult r = lengthValidation.Validate("12", CultureInfo.CurrentCulture);

            Assert.AreEqual(false, r.IsValid);

            Assert.AreEqual("String length must be between 3 and 0.", r.ErrorContent);
        }

        [TestMethod]
        public void CheckSholdByValid1()
        {
            LengthValidation lengthValidation = new LengthValidation();

            lengthValidation.Max = 10;

            Assert.AreEqual(true, lengthValidation.Validate("1234567890", CultureInfo.CurrentCulture).IsValid);
        }

        [TestMethod]
        public void CheckSholdByValid2()
        {
            LengthValidation lengthValidation = new LengthValidation();

            lengthValidation.Max = 10;

            Assert.AreEqual(false, lengthValidation.Validate("12345678901", CultureInfo.CurrentCulture).IsValid);

            Assert.AreEqual("String length must be between 0 and 10.", lengthValidation.Validate("12345678901", CultureInfo.CurrentCulture).ErrorContent);
        }

    }
}
