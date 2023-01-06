using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;


namespace SCOELfinalss
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source = (local); Initial Catalog = DigitalCard; Persist Security Info = True; User ID = sa; Password = admin@spring2020");

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select ID from UsersLogin where Username ='" + usenname.Text + "' And Password = '" + password.Text + "' ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

             


                if (dt.Rows.Count == 1)
                {


                    if (dt.Rows[0][0].ToString() == "1")
                    {
                        Response.Write("<script>alert('Successfully Login')</script>");
                        Response.Redirect("~/ViewProfile.aspx");

                    }
                    else if (dt.Rows[0][0].ToString() == "2")
                    {
                        Response.Write("<script>alert('Successfully Login')</script>");
                        Response.Redirect("~/Profile.aspx");
                    }
                   

                }
                else
                {
                    Response.Write("<script>alert('Error in Login')</script>");
                    clr();
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            clr();
            con.Close();
        }
        private void clr()
        {
            usenname.Text = string.Empty;
            password.Text = string.Empty;
        }

        protected void usenname_TextChanged(object sender, EventArgs e)
        {

        }
    }

}

