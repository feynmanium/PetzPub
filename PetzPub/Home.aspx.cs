using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetzPub
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
            SqlCommand cmd;
            string command = "SELECT [Id], [imageUrl] FROM[Products]";
            
            cmd = new SqlCommand(command);
            cmd.Connection = connection;

            try
            {
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    string url = reader["imageUrl"].ToString();
                    if (url != null)
                        ImageButton1.ImageUrl = url;
                }

                if (reader.Read())
                {
                    string url = reader["imageURL"].ToString();
                    if (url != null)
                        ImageButton2.ImageUrl = url;
                }
                if (reader.Read())
                {
                    string url = reader["imageURL"].ToString();
                    if (url != null)
                        ImageButton3.ImageUrl = url;
                }
                if (reader.Read())
                {

                    string url = reader["imageURL"].ToString();
                    if (url != null)
                        ImageButton4.ImageUrl = url;
                }
                if (reader.Read())
                {
                    string url = reader["imageURL"].ToString();
                    if (url != null)
                        ImageButton5.ImageUrl = url;
                }

                if (reader.Read())
                {
                    string url = reader["imageURL"].ToString();
                    if (url != null)
                        ImageButton6.ImageUrl = url;
                }
                if (reader.Read())
                {

                    string url = reader["imageURL"].ToString();
                    if (url != null)
                        ImageButton7.ImageUrl = url;
                }
                if (reader.Read())
                {

                    string url = reader["imageURL"].ToString();
                    if (url != null)
                        ImageButton8.ImageUrl = url;
                }
                if (reader.Read())
                {

                    string url = reader["imageURL"].ToString();
                    if (url != null)
                        ImageButton9.ImageUrl = url;
                }
                connection.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void onImageClick(object sender, EventArgs e)
        {
            Response.Redirect("Product.aspx");
        }
    }
}