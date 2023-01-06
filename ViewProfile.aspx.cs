using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace SCOELfinalss
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = (local); Initial Catalog = DigitalCard; Persist Security Info = True; User ID = sa; Password = admin@spring2020");
        void getmembership()
        {
            SqlCommand cm = new SqlCommand(" Select * from Profile", con);
            SqlDataAdapter sd = new SqlDataAdapter(cm);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt; GridView1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                getmembership();
        }

    }
}



