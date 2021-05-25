using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace OnlineBookReselling
{
    public partial class SellBook : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            addNewBook();
        }
        void clearForm()
        {
            TextBookName.Text = "";
            TextPublisherName.Text = "";
            DropDownCategory.Text = "";
            DropDownLanguage.Text = "";
            TextPurchaseDate.Text = "";
            DropDownCondition.Text = "";
            TextPrice.Text = "";
            TextDescription.Text = "";
        }
       /* void ImageUp()
        {
            if (!ImgFront.HasFile)
            {

                Response.Write("<script>alert('Please Select a Image');</script>");

            }
            else
            {
                int length = ImgFront.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                ImgFront.PostedFile.InputStream.Read(pic, 0, length);
            }
            
        }*/
        void addNewBook()
        {
            
            try
            {

                /*string filepathfront = "~/book_inventory/books1.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("book_inventory/" + filename));
                filepath = "~/book_inventory/" + filename;*/
                if (!ImgFront.HasFile || !ImgBack.HasFile || !ImgSide.HasFile || !ImgBar.HasFile)
                {

                    Response.Write("<script>alert('Please Select all Images');</script>");

                }
                else
                {
                    int length1 = ImgFront.PostedFile.ContentLength;
                    byte[] pic1 = new byte[length1];
                    ImgFront.PostedFile.InputStream.Read(pic1, 0, length1);

                    int length2 = ImgBack.PostedFile.ContentLength;
                    byte[] pic2 = new byte[length2];
                    ImgBack.PostedFile.InputStream.Read(pic2, 0, length2);

                    int length3 = ImgSide.PostedFile.ContentLength;
                    byte[] pic3 = new byte[length3];
                    ImgSide.PostedFile.InputStream.Read(pic3, 0, length3);

                    int length4 = ImgBar.PostedFile.ContentLength;
                    byte[] pic4 = new byte[length4];
                    ImgBar.PostedFile.InputStream.Read(pic4, 0, length4);


                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO book_master_tbl(book_name,publisher_name,category,language,purchase_date,condition,price,description,username,status,img_front,img_back,img_side,img_label) values(@book_name,@publisher_name,@category,@language,@purchase_date,@condition,@price,@description,@username,@status,@imagefront,@imageback,@imageside,@imagebar)", con);

                    cmd.Parameters.AddWithValue("@book_name", TextBookName.Text.Trim());
                    cmd.Parameters.AddWithValue("@publisher_name", TextPublisherName.Text.Trim());
                    cmd.Parameters.AddWithValue("@category", DropDownCategory.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@language", DropDownLanguage.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@purchase_date", TextPurchaseDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@condition", DropDownCondition.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@price", TextPrice.Text.Trim());
                    cmd.Parameters.AddWithValue("@description", TextDescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@username", Session["username"]);
                    cmd.Parameters.AddWithValue("@status", "Pending");
                    cmd.Parameters.AddWithValue("@imagefront", pic1);
                    cmd.Parameters.AddWithValue("@imageback", pic2);
                    cmd.Parameters.AddWithValue("@imageside", pic3);
                    cmd.Parameters.AddWithValue("@imagebar", pic4);



                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Book added for review.');</script>");
                    clearForm();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}