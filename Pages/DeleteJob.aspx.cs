using EmployeeServices.Model;
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
    public partial class DeleteJob : System.Web.UI.Page
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
            var jobService = new JobService();
                var idText = Request.QueryString["id"];
                var id = int.Parse(idText);

                

                try
                {
                    jobService.Delete(id);

                    LabelStatus.ShowStatusMessage("Job record successfully deleted!");
                }
                catch (SqlException sqlException)
                {
                    Console.WriteLine(sqlException);
                    LabelStatus.ShowStatusMessage("Failed to delete Job record! Maybe a foreign key was found! Please contact database admin!");
                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception);
                    LabelStatus.ShowStatusMessage("Failed to delete Job record!");
                }
            
        }

        private void ShowDataToDelete()
        {
            var idText = Request.QueryString["id"];

            try
            {
                var id = int.Parse(idText);

                var jobService = new JobService();
                var job = jobService.GetById(id);
                if (job == null)
                {
                    LabelStatus.ShowStatusMessage("Specified Id Not Found");
                    return;
                }
                job.JobId = id;
                TextBoxTitle.Text = job.Title;
                TextBoxNumberofPositions.Text = job.NumberofPositions.ToString();
                TextBoxLocation.Text = job.Location;
                TextBoxSalaryRange.Text = job.SalaryRange.ToString();

            }
            catch (Exception e)
            {
                LabelStatus.ShowStatusMessage("Id Parameter Not Found !");
            }
        }

      
    }
}