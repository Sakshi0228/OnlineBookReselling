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
    public partial class PurchasePage : System.Web.UI.Page
    {
        
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        String bookname;
        String price;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["book_id"];
            Panel1.Visible = false;
            
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
                    bookname = dr.GetValue(1).ToString();
                    price = dr.GetValue(7).ToString();
                    LabelTitle.Text = dr.GetValue(1).ToString();
                    LabelCondition.Text = dr.GetValue(6).ToString();
                    LabelPrice.Text = dr.GetValue(7).ToString();
                    string imageFrontUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["img_front"]);
                    ImageFront.ImageUrl = imageFrontUrl;
                }
            }
            con.Close();
        }

        protected void RadioCard_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioCard.Checked == true)
            {
                Panel1.Visible = true;
            }
            else
            {
                Panel1.Visible = false;
            }
        }

        protected void RadioCOD_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioCOD.Checked == true)
            {
                Panel1.Visible = false;
            }
            else
            {
                Panel1.Visible = false;
            }

            Response.Write("Clicked");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["book_id"];
            Response.Redirect("BookDetail.aspx?book_id=" + id);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {
                string id = Request.QueryString["book_id"];
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO order_master_tbl(username,book_name,price,payment_mode,order_date,address) values(@username,@book_name,@price,@payment_mode,@order_date,@address)", con);
                cmd.Parameters.AddWithValue("@username", Session["username"]);
                cmd.Parameters.AddWithValue("@book_name", bookname);
                cmd.Parameters.AddWithValue("@price", price);
                if (RadioCOD.Checked)
                {
                    cmd.Parameters.AddWithValue("@payment_mode", RadioCOD.Text);
                }
                else if(RadioCard.Checked)
                {
                    cmd.Parameters.AddWithValue("@payment_mode", RadioCard.Text);
                }
                cmd.Parameters.AddWithValue("@order_date", DateTime.Now);
                cmd.Parameters.AddWithValue("@address", Address.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Order Successful.');</script> ");

                Panel1.Visible = false;

                SqlConnection con2 = new SqlConnection(strcon);
                if (con2.State == ConnectionState.Closed)
                {
                    con2.Open();

                }
                string yes = "Yes";
                SqlCommand cmd2 = new SqlCommand("UPDATE book_master_tbl SET sold='" + yes + "'WHERE book_id='" + id + "'", con2);
                cmd2.ExecuteNonQuery();
                con2.Close();
                Response.Redirect("UserProfile.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}