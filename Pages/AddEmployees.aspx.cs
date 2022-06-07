using EmployeeServices.Model;
using EmployeeServices.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagement.Pages
{
    public partial class AddEmployees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
        }

        protected void ButtonCreate_Click1(object sender, EventArgs e)
        {
            CreateData();
        }
        public void CreateData()
        {
            var employeeService = new EmployeeService();

            try
            {
                var employee = new Employees();


                employee.Name = TextBoxName.Text;

                if (radioButtonMale.Checked)
                {
                    employee.Gender = radioButtonMale.Text;
                }
                else
                {
                    employee.Gender = radioButtonFemale.Text;
                }

                employee.Age = int.Parse(TextBoxAge.Text);
                employee.Address = TextBoxAddress.Text;
                employee.Department = TextBoxDepartment.Text;
                employee.DateOfJoining = DateTime.Parse(TextBoxDateOfJoining.Text);
                employee.Email = TextBoxEmail.Text;
                employee.JobId = int.Parse(TextBoxJobId.Text);
                employeeService.Add(employee);
                LabelStatus.ShowStatusMessage(" User record Successfully Added");




            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to add User record");

            }
        }

       

        
    }
}