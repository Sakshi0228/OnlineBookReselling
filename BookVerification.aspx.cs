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
    public partial class BookInventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AcceptBook();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            RejectBook();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getBookByID();
        }
        bool checkIfBookExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from book_master_tbl where book_id='" + TextBookID.Text.Trim() + "'and status ='pending'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void AcceptBook()
        {
            int price = Convert.ToInt32(TextPrice.Text);
            int newprice = price + price/10;
            string np = Convert.ToString(newprice);
            string var = "Accepted";
            string s = "No";
            if (checkIfBookExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("UPDATE book_master_tbl SET price='" +np+ "', status='" + var + "', sold='" + s + "' WHERE book_id='" + TextBookID.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Book Accepted Succesfully');</script>");
                    clearForm();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid BookID');</script>");
            }
        }

        void RejectBook()
        {
            
            string var = "Rejected";
            if (checkIfBookExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("UPDATE book_master_tbl SET status='" + var + "' WHERE book_id='" + TextBookID.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Book Rejected Succesfully');</script>");
                    clearForm();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid BookID');</script>");
            }
        }

        void getBookByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from book_master_tbl where book_id='" + TextBookID.Text.Trim() + "'and status ='Pending'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextUploadedBy.Text = dr.GetValue(13).ToString();
                        TextBookName.Text = dr.GetValue(1).ToString();
                        TextPublisherName.Text = dr.GetValue(2).ToString();
                        TextCategory.Text = dr.GetValue(3).ToString();
                        TextLanguage.Text = dr.GetValue(4).ToString();
                        TextPurchaseDate.Text = dr.GetValue(5).ToString();
                        TextCondition.Text = dr.GetValue(6).ToString();
                        TextPrice.Text = dr.GetValue(7).ToString();
                        TextDescription.Text = dr.GetValue(8).ToString();

                        string imageFrontUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["img_front"]);
                        ImgFront.ImageUrl = imageFrontUrl;
                        string imageBackUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["img_back"]);
                        ImgBack.ImageUrl = imageBackUrl;
                        string imageSideUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["img_side"]);
                        ImgSide.ImageUrl = imageSideUrl;
                        string imageBarUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["img_label"]);
                        ImgBar.ImageUrl = imageBarUrl;

                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid Book ID');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void clearForm()
        {
            TextUploadedBy.Text = "";
            TextBookName.Text = "";
            TextPublisherName.Text = "";
            TextCategory.Text = "";
            TextLanguage.Text = "";
            TextPurchaseDate.Text = "";
            TextCondition.Text = "";
            TextPrice.Text = "";
            TextDescription.Text = "";
        }
    }
}