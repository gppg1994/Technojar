using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebApplicationTechnojar.App_Code
{
    public class CodeProject
    {
        private string strConnectionString { get; set; }    
        public string VendorName { get; set; }
        public string OfferTitle { get; set; }
        public string OfferDetails { get; set; }
        public string OfferLink { get; set; }
        private SqlConnection conn { get; set; }        
        private void EstablishConnection()
        {
            //CodeProject cp = new CodeProject();
            this.strConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename='C:\\Users\\LENOVO\\onedrive\\documents\\visual studio 2015\\Projects\\WebApplicationTechnojar\\WebApplicationTechnojar\\App_Data\\Offers.mdf';Integrated Security=True";
            this.conn = new SqlConnection(this.strConnectionString);
        }
        private void ExecuteCommand(string query)
        {
            //CodeProject cp = new CodeProject();           
            conn.Open(); 
            SqlCommand cmd = new SqlCommand(query, this.conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void InsertData(string vendorname,string offertitle,string offerdetails,string offerlink,string imgUrl)
        {
            //CodeProject cp = new CodeProject();
            EstablishConnection();
            string strID = GenerateHashCode();
            string insertQuery = "insert into tblOffers values('" + strID + "','" + vendorname + "','" + imgUrl + "','" + imgUrl + "','" + offerlink + "','"+vendorname+"')";
            ExecuteCommand(insertQuery);
        }
        private string GenerateHashCode()
        {
            Random rand = new Random();
            string parentstr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            int length = 8;
            string key = "";
            for(int i = 0; i < length; i++)
            {
                int a = rand.Next(61);
                key = key + parentstr.ElementAt(a);
            }
            return key;
        }



        
    }
}