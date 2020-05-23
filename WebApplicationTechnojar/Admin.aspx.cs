using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationTechnojar.App_Code;

namespace WebApplicationTechnojar
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnAddToTable_Click(object sender, EventArgs e)
        {
            CodeProject cp = new CodeProject();
            string filename="";
            if(picUpload.HasFile)
            {
                filename = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments)+ @"\visual studio 2015\Projects\WebApplicationTechnojar\WebApplicationTechnojar\pic\" + txtVendorName.Text.ToString() + cp.GetHashCode().ToString()+picUpload.FileName.Split('.')[0];
                Console.WriteLine(filename);
                picUpload.SaveAs(filename);
                filename = @"pic\"+System.IO.Path.GetFileName(filename);
                Console.WriteLine(filename);
            }
            cp.InsertData(txtVendorName.Text.ToString(), txtOfferTitle.Text.ToString(), txtOfferDetails.Text.ToString(), txtOfferLink.Text.ToString(), filename);
        }
    }
}