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
    public partial class UpdateJobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            ShowDataToUpdate();
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            UpdateData();
        }



        private void UpdateData()
        {
            var jobService = new JobService();

            try
            {
                var job = new Job();

                job.JobId = int.Parse(Request.QueryString["id"]);
                job.Title = TextBoxTitle.Text;
                job.NumberofPositions = int.Parse(TextBoxNumberofPositions.Text);
                job.Location = TextBoxLocation.Text;
                job.SalaryRange = int.Parse(TextBoxSalaryRange.Text);
              
                jobService.Update(job);
                LabelStatus.ShowStatusMessage("Job record Updated Successfully");

            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to Update Job record");

            }
        }

        private void ShowDataToUpdate()
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