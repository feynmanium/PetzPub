using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetzPub
{
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TableHeaderRow header = new TableHeaderRow();
            TableCell col1 = new TableCell();
            TableCell col2 = new TableCell();
            TableCell col3 = new TableCell();
            TableCell col4 = new TableCell();

            col1.Text = "";
            col2.Text = "Product Name";
            col3.Text = "Category";
            col4.Text = "Price";

            header.Cells.Add(col1);
            header.Cells.Add(col2);
            header.Cells.Add(col3);
            header.Cells.Add(col4);

            TableProducts.Rows.Add(header);

            SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT [Id], [product_name], [price], [category], [imageUrl] FROM [Products]");
            cmd.Connection = connection;

            try
            {
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    TableRow row = new TableRow();

                    TableCell cellImage = new TableCell();
                    TableCell cellName = new TableCell();
                    TableCell cellPrice = new TableCell();
                    TableCell cellCategory = new TableCell();
                    TableCell cellLink = new TableCell();

                    cellName.Text = reader["product_name"].ToString();
                    cellPrice.Text = ("$" + reader["price"].ToString());
                    cellCategory.Text = reader["category"].ToString();

                    string url = reader["imageUrl"].ToString();

                    Image image = new Image();
                    image.ImageUrl = url;
                    image.Height = 150;
                    image.Width = 100;
                    cellImage.Controls.Add(image);

                    cellLink.Text = "<a href='Product.aspx'>View</a>";

                    row.Cells.Add(cellImage);
                    row.Cells.Add(cellName);
                    row.Cells.Add(cellCategory);
                    row.Cells.Add(cellPrice);
                    row.Cells.Add(cellLink);

                    TableProducts.Rows.Add(row);
                }

                connection.Close();
            }catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}