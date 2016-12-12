using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetzPub
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("SELECT * FROM Products WHERE id='" + Request.QueryString["id"] + "'");
                cmd.Connection = connection;
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    productName.InnerText = reader["product_name"].ToString();
                    price.InnerHtml = "$" + reader["price"].ToString();
                    description.InnerHtml = reader["description"].ToString();

                    Image1.ImageUrl = reader["imageURL"].ToString();
                }
                connection.Close();
            }catch(Exception ex)
            {
                productName.InnerHtml = "Product Not Found";
            }
        }
    }
}