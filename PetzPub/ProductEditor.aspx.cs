using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetzPub
{
    public partial class ProductEditor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRemove_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                try
                {
                    SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand("DELETE FROM Products WHERE id='" + ListBox1.SelectedValue + "'");
                    cmd.Connection = connection;
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Products WHERE id='" + ListBox1.SelectedValue + "'");
            cmd.Connection = connection;
            connection.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                TextBoxProductName.Text = reader["product_name"].ToString();
                TextBoxPrice.Text = reader["price"].ToString();
                TextBoxDescription.Text = reader["description"].ToString();
                DropDownListAnimal.Text = reader["animal"].ToString();
                DropDownListCategory.Text = reader["category"].ToString();
            }
            connection.Close();

        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            if (TextBoxProductName.Text != null && TextBoxPrice.Text != null && TextBoxDescription != null)
            {
                SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("UPDATE Products SET product_name='" + TextBoxProductName.Text + "', price='" + TextBoxPrice.Text + "', description='" + TextBoxDescription.Text + "', animal='" + DropDownListAnimal.Text + "', category='" + DropDownListCategory.Text + "' WHERE id='" + ListBox1.SelectedValue + "'");
                cmd.Connection = connection;
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                connection.Close();
            }
        }
    }
}