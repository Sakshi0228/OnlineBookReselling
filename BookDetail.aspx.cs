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
    public partial class BookDetail : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["book_id"];
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            SqlCommand cmd = new SqlCommand("SELECT * from book_master_tbl WHERE book_id='" + id + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    LabelTitle.Text = dr.GetValue(1).ToString();
                    LabelPublisher.Text = dr.GetValue(2).ToString();
                    LabelLanguage.Text = dr.GetValue(4).ToString();
                    LabelCategory.Text = dr.GetValue(3).ToString();
                    LabelCondition.Text = dr.GetValue(6).ToString();
                    LabelPrice.Text = dr.GetValue(7).ToString();
                    LabelDesc.Text = dr.GetValue(8).ToString();
                    string imageFrontUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["img_front"]);
                    ImageFront.ImageUrl = imageFrontUrl;
                    string imageBackUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["img_back"]);
                    ImageBack.ImageUrl = imageBackUrl;
                    string imageSideUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["img_side"]);
                    ImageSide.ImageUrl = imageSideUrl;
                    string imageBarUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["img_label"]);
                    ImageBar.ImageUrl = imageBarUrl;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyBooks.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["book_id"];
            Response.Redirect("PurchasePage.aspx?book_id=" + id);
        }
    }
}