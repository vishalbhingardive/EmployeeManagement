using EmployeeServices.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace EmployeeManagement.Pages
{
    public partial class Index : System.Web.UI.Page
    {
        private static readonly string ConnectionString = ConfigurationManager.ConnectionStrings["EmployeeManagement"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                const string cmdText = "GetAll_Users";
                using (var command = new SqlCommand(cmdText, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    connection.Open();
                    command.Parameters.AddWithValue("@Username", TextBoxEmail.Text);
                    command.Parameters.AddWithValue("@Password", TextBoxPassword.Text);

                    int usercount = (int)command.ExecuteScalar();

                    if (usercount == 1)
                    {
                        Response.Redirect("DashBoard.aspx");
                    }
                    else
                    {
                        connection.Close();
                        LabelEmail.Text = "Invalid User Name or Password";
                    }
                }
            }
        }
    }
}