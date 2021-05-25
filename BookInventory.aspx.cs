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
    public partial class BookInventory1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            updateBookByID();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            deleteBookByID();
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

                SqlCommand cmd = new SqlCommand("SELECT * from book_master_tbl where book_id='" + TextBookID.Text.Trim() + "'and status ='Accepted'", con);
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

        void deleteBookByID()
        {
            if (checkIfBookExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from book_master_tbl WHERE book_id='" + TextBookID.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Book Deleted Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Book ID');</script>");
                
            }
        }

        void updateBookByID()
        {
            
            string BookName=TextBookName.Text;
            string PublisherName=TextPublisherName.Text;
            string Category = DropDownCategory.SelectedValue;
            string Language=DropDownLanguage.SelectedValue;
            string Condition=DropDownCondition.SelectedValue;
            string Price=TextPrice.Text;
            string Description=TextDescription.Text;
            if (checkIfBookExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("UPDATE book_master_tbl SET book_name='" + BookName + "', publisher_name='" + PublisherName + "', category='" + Category + "', language='" + Language + "', condition='" + Condition + "', price='" + Price + "', description='" + Description + "' WHERE book_id='" + TextBookID.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Book Details Updated');</script>");


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
                SqlCommand cmd = new SqlCommand("select * from book_master_tbl where book_id='" + TextBookID.Text.Trim() + "'and status ='Accepted'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextUploadedBy.Text= dr.GetValue(13).ToString();
                        TextBookName.Text = dr.GetValue(1).ToString();
                        TextPublisherName.Text = dr.GetValue(2).ToString();
                        DropDownCategory.SelectedValue = dr.GetValue(3).ToString();
                        DropDownLanguage.SelectedValue = dr.GetValue(4).ToString();
                        TextPurchaseDate.Text = dr.GetValue(5).ToString();
                        DropDownCondition.SelectedValue = dr.GetValue(6).ToString();
                        TextPrice.Text = dr.GetValue(7).ToString();
                        TextDescription.Text = dr.GetValue(8).ToString();
                        TextSold.Text = dr.GetValue(15).ToString();

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
            DropDownCategory.SelectedValue = "select";
            DropDownLanguage.SelectedValue = "select";
            TextPurchaseDate.Text = "";
            DropDownCondition.SelectedValue = "select";
            TextPrice.Text = "";
            TextDescription.Text = "";
        }
    }
}