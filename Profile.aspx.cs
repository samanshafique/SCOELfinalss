using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace SCOELfinalss
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (local); Initial Catalog = DigitalCard; Persist Security Info = True; User ID = sa; Password = admin@spring2020");
        void getbusiness()
        {
            SqlCommand cm = new SqlCommand("Select * from Profile", con);
            SqlDataAdapter sd = new SqlDataAdapter(cm);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt; GridView1.DataBind();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                getbusiness();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TxtBname.Text == ""  || txtmail.Text == "" )
            {
                Response.Write("<script>alert('Enter Valid Data to insert')</script>");

            }
            else
            {

                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Profile values ('" + TxtBname.Text + "','"  + txtmail.Text + "')", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);
                getbusiness();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (TxtBid.Text == "")
            {
                Response.Write("<script>alert('Enter UserID which you to Update')</script>");

            }
            else
            {

                if (TxtBname.Text == "" || txtmail.Text == ""  )
                {
                    Response.Write("<script>alert('Enter Valid Data to Update')</script>");

                }
                else
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update Profile set Username='" + TxtBname.Text + "', SocialMeidaLinks='" + txtmail.Text  + "' where UserId='" + int.Parse(TxtBid.Text) + "'", con);
                
                    cmd.ExecuteNonQuery();
                    clr();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
                    getbusiness();
                }



            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TxtBid.Text == "")
            {
                Response.Write("<script>alert('Enter User ID which you to delete')</script>");

            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete UserID where UserID='" + int.Parse(TxtBid.Text) + "'", con);
                cmd.ExecuteNonQuery();
                clr();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
                getbusiness();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TxtBid.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Must Enter ID to found data');", true);
            }
            else
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Profile where UserId='" + int.Parse(TxtBid.Text) + "'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    TxtBname.Text = reader.GetValue(1).ToString();
                   // TxtBaddress.Text = reader.GetValue(2).ToString();
                    txtmail.Text = reader.GetValue(3).ToString();
               
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('No record found');", true);
                    clr();
                }

            }

        }

        private void clr()
        {
            TxtBname.Text = string.Empty;
          //  TxtBaddress.Text = string.Empty;
            TxtBid.Text = string.Empty;
            txtmail.Text = string.Empty;
          



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       

        protected void uplbtn_Click(object sender, EventArgs e)
        {
            string imgName = FileUpload1.FileName;
            //sets the image path  
            string imgPath = "ImageStorage/" + imgName;
            //get the size in bytes that  

            int imgSize = FileUpload1.PostedFile.ContentLength;

            //validates the posted file before saving  
            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
            {
                // 10240 KB means 10MB, You can change the value based on your requirement  
                if (FileUpload1.PostedFile.ContentLength > 10240)
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
                }
                else
                {
                    //then save it to the Folder  
                    FileUpload1.SaveAs(Server.MapPath(imgPath));
                    Image1.ImageUrl = "~/" + imgPath;
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                }

            }
        }
    }

}



