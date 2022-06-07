using EmployeeServices.Services;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeManagement.Pages
{
    public partial class DeleteEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            ShowDataToDelete();
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            DeleteData();
        }
        private void DeleteData()
        {
            
            var idText = Request.QueryString["id"];
            var id = int.Parse(idText);

            var employeeService = new EmployeeService();

            try
            {
                employeeService.Delete(id);

                LabelStatus.ShowStatusMessage("Employee record successfully deleted!");
            }
            catch (SqlException sqlException)
            {
                Console.WriteLine(sqlException);
                LabelStatus.ShowStatusMessage("Failed to delete Employee record! Maybe a foreign key was found! Please contact database admin!");
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to delete Employee record!");
            }
        }

        private void ShowDataToDelete()
        {
            var idText = Request.QueryString["id"];

            try
            {
                var id = int.Parse(idText);

                var employeeService = new EmployeeService();
                var employee = employeeService.GetById(id);
                if (employee == null)
                {
                    LabelStatus.ShowStatusMessage("Specified Id Not Found");
                    return;
                }
                employee.EmployeeId = id;
                 TextBoxName.Text = employee.Name;

                if(employee.Gender=="Male")
                {
                    RadioButtonList1.SelectedValue = "Male";
                }
                else
                {
                    RadioButtonList1.SelectedValue = "Female";
                }


              
                // if (radioButtonMale.Checked)
                // {
                //     radioButtonMale.Text = employee.Gender;
                // }
                //else if(radioButtonFemale.Checked)
                // {
                //     radioButtonFemale.Text = employee.Gender;
                // }

                TextBoxAge.Text  =employee.Age.ToString();
                TextBoxAddress.Text = employee.Address;
                 TextBoxDepartment.Text = employee.Department;
                TextBoxDateOfJoining.Text = employee.DateOfJoining.ToString();
                 TextBoxEmail.Text = employee.Email;
               TextBoxJobId.Text = employee.JobId.ToString();
            }
            catch (Exception e)
            {
                LabelStatus.ShowStatusMessage("Id Parameter Not Found !");
            }
        }


    }
}