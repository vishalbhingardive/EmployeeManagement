using EmployeeServices.Model;
using EmployeeServices.Services;
using System;


namespace EmployeeManagement.Pages
{
    public partial class UpdateEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;
            ShowDataToUpdate();
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            UpdateData();
        }

        private void UpdateData()
        {
            var userService = new EmployeeService();

            try
            {
                var employee = new Employees();

                employee.EmployeeId=int.Parse(Request.QueryString["id"]);
                employee.Name = TextBoxName.Text;
                if (RadioButtonList1.SelectedValue=="Male")
                {
                    employee.Gender = RadioButtonList1.Text;
                }
                else
                {
                    employee.Gender = RadioButtonList1.Text;
                }

                employee.Age = int.Parse(TextBoxAge.Text);
                employee.Address = TextBoxAddress.Text;
                employee.Department =TextBoxDepartment.Text;
                employee.DateOfJoining = DateTime.Parse(TextBoxDateOfJoining.Text);
                employee.Email = TextBoxEmail.Text;
                employee.JobId = int.Parse(TextBoxJobId.Text);
                userService.Update(employee);

            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to Update Employee record");

            }
        }

        private void ShowDataToUpdate()
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

                if (employee.Gender == "Male")
                {
                    RadioButtonList1.SelectedValue = "Male";
                }
                else
                {
                    RadioButtonList1.SelectedValue = "Female";
                }



              

                TextBoxAge.Text = employee.Age.ToString();
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