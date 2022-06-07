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
    public partial class AddJobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
        }

        protected void ButtonCreate_Click(object sender, EventArgs e)
        {
            CreateData();
        }

        public void CreateData()
        {
            var jobService = new JobService();

            try
            {
                var job = new Job();


                job.Title = TextBoxTitle.Text;
                job.NumberofPositions = int.Parse(TextBoxNumberofPositions.Text);
                job.Location = TextBoxLocation.Text;
                job.SalaryRange = int.Parse(TextBoxSalaryRange.Text);
                jobService.Add(job);
                LabelStatus.ShowStatusMessage(" Job record Successfully Added");




            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                LabelStatus.ShowStatusMessage("Failed to add Job record");

            }
        }

    }
}