using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OnlineBookReselling
{
    public partial class UserProfile : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from user_master_tbl where username='" + Session["username"] + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextFullName.Text = dr.GetValue(0).ToString();
                        Label1.Text = dr.GetValue(10).ToString();
                        TextDOB.Text = dr.GetValue(4).ToString();
                        TextContactNo.Text = dr.GetValue(5).ToString();
                        TextEmailID.Text = dr.GetValue(3).ToString();
                        DropDownState.SelectedValue = dr.GetValue(6).ToString();
                        TextCity.Text = dr.GetValue(7).ToString();
                        TextPincode.Text = dr.GetValue(8).ToString();
                        TextFullAddress.Text = dr.GetValue(9).ToString();
                        TextUsername.Text = dr.GetValue(1).ToString();
                        TextOldPass.Text = dr.GetValue(2).ToString();

                    }

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}