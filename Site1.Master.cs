using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookReselling
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.Visible = false; // sell book link button
            LinkButton4.Visible = false; //buy book link button
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = false; // sell book link button
                    LinkButton2.Visible = true; // user login link button
                    LinkButton3.Visible = true; // signup link button
                    LinkButton4.Visible = false; //buy book link button
                    LinkButton7.Visible = false; // logout link button
                    LinkButton5.Visible = false; //hello user link button

                    LinkButton6.Visible = true; // admin login link button
                    LinkButton8.Visible = false; // book inventory link button
                    LinkButton9.Visible = false; // verification link button
                    LinkButton10.Visible = false; // member management link button
                    LinkButton11.Visible = false; // Order view link button

                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = true; // sell book link button
                    LinkButton2.Visible = false; // user login link button
                    LinkButton3.Visible = false; // signup link button
                    LinkButton4.Visible = true; //buy book link button
                    LinkButton7.Visible = true; // logout link button
                    LinkButton5.Visible = true; //hello user link button
                    LinkButton5.Text = "Hello " + Session["fullname"].ToString();

                    LinkButton6.Visible = true; // admin login link button
                    LinkButton8.Visible = false; // book inventory link button
                    LinkButton9.Visible = false; // verification link button
                    LinkButton10.Visible = false; // member management link button
                    LinkButton11.Visible = false; // Order view link button

                }
                else if((Session["role"].Equals("admin")))
                {
                    LinkButton1.Visible = false; // sell book link button
                    LinkButton2.Visible = false; // user login link button
                    LinkButton3.Visible = false; // signup link button
                    LinkButton4.Visible = false; //buy book link button
                    LinkButton7.Visible = true; // logout link button
                    LinkButton5.Visible = true; //hello user link button
                    LinkButton5.Text = "Hello Admin " + Session["fullname"].ToString();

                    LinkButton6.Visible = false; // admin login link button
                    LinkButton8.Visible = true; // book inventory link button
                    LinkButton9.Visible = true; // verification link button
                    LinkButton10.Visible = true; // member management link button
                    LinkButton11.Visible = true; // Order view link button
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookVerification.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookInventory.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserManagement.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSignUp.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SellBook.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = false; // sell book link button
            LinkButton2.Visible = true; // user login link button
            LinkButton3.Visible = true; // signup link button
            LinkButton4.Visible = false; //buy book link button
            LinkButton7.Visible = false; // logout link button
            LinkButton5.Visible = false; //hello user link button

            LinkButton6.Visible = true; // admin login link button
            LinkButton8.Visible = false; // book inventory link button
            LinkButton9.Visible = false; // verification link button
            LinkButton10.Visible = false; // member management link button
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("user"))
            {
                Response.Redirect("UserProfile.aspx");
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyBooks.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderView.aspx");
        }
    }
}