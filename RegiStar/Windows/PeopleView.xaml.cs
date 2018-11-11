using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using RegiStar.Model;
using RegiStar.ViewModel;

namespace RegiStar.Windows
{
    /// <summary>
    /// Interaction logic for StudentView.xaml
    /// </summary>
    public partial class PeopleView : Window
    {
        PeopleViewModel peopleViewModel;

        //Constructor when sending the window nothing
        public PeopleView()
        {
            InitializeComponent();
        }


        //Constructor when new student.
        public PeopleView(tblStudent student, int newestID) : this()
        {
            //Create a new student with the newest studentID
            student = new tblStudent{ studentID = newestID };

            //Send it to the view model.
            peopleViewModel = new PeopleViewModel(student);
            this.DataContext = peopleViewModel;

            //Show the student controls.

            passwordStack.Visibility = Visibility.Visible;
            this.Title = "New student :";
            labelHeader.Content = "Please enter the following information to create a new student.";
            
        }

        //Constructor when editing student.
        public PeopleView(tblStudent student) : this()
        {
            //Send it to the view model.
            peopleViewModel = new PeopleViewModel(student);
            this.DataContext = peopleViewModel;

            //Show the edit student controls.
            studentGrid.Visibility = Visibility.Visible;
            this.Title = "Edit student :";
            labelHeader.Content = "Editing student " + student.fullName;
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            peopleViewModel.saveStudent();
            this.Close();
        }
    }
}
