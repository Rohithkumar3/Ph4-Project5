using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_5
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Btnsubmit_Click(object sender, EventArgs e)
        {

            LblMsg.Visible = true;
            SqlConnection con = new SqlConnection("Server=tcp:rohithserver3.database.windows.net,1433;Initial Catalog=Rohithdb;Persist Security Info=False;User ID=Rohith;Password=kanna123@;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            try
            {

                SqlCommand cmd = new SqlCommand("insert into Form(Name,Email,Rating) values(@Name,@mail,@rating) ", con);
                cmd.Parameters.AddWithValue("@Name", Txtname.Text);
                cmd.Parameters.AddWithValue("@mail", Txtmail.Text);
                cmd.Parameters.AddWithValue("@rating", int.Parse(Txtrating.Text));
                con.Open();
                cmd.ExecuteNonQuery();
                LblMsg.Text = "Feedback Submitted!!!";


            }
            catch (Exception ex)
            {
                LblMsg.Text += "Error!!!" + ex.Message;
            }
            finally { con.Close(); }
        }
    }
}

