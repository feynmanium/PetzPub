using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PetzPub
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null) {
                Response.Write("You do not have access to this page");
                foreach (Control c in this.Controls)
                {
                    c.Visible = false;
                }
            }
            else if (Session["User"].ToString() != "admin")
            {
                Response.Write("You do not have access to this page");
                foreach (Control c in this.Controls)
                {
                    c.Visible = false;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string productName = TextBoxProductName.Text;
            string productPrice = TextBoxPrice.Text;
            string productDescription = TextBoxDescription.Text;
            string productAnimal = DropDownListAnimal.Text;
            string productCategory = DropDownListCategory.Text;
            string productImageUrl = "";

            if (Page.IsPostBack)
            {
                Boolean fileOK = false;
                string path = Server.MapPath("~/Images/");

                if (FileUpload1.HasFile)
                {
                    String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                    String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                    for (int i = 0; i < allowedExtensions.Length; i++)
                    {
                        if (fileExtension == allowedExtensions[i])
                        {
                            fileOK = true;
                        }
                    }
                }

                if (fileOK)
                {
                    try
                    {
                        FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                        LabelOutput.Text = "File uploaded to " + "~/Images/" + FileUpload1.FileName;
                        ImageOutput.ImageUrl = "~/Images/" + FileUpload1.FileName;
                        productImageUrl = "~/Images/" + FileUpload1.FileName;

                        SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("INSERT INTO Products(product_name, price, description, animal, category, imageUrl) VALUES ('" + productName + "', " + productPrice + ", '" + productDescription + "', '" + productAnimal + "', '" + productCategory + "', '" + productImageUrl + "')");
                        cmd.Connection = connection;
                        connection.Open();
                        cmd.ExecuteNonQuery();
                        connection.Close();
                    }
                    catch (Exception ex)
                    {
                        LabelOutput.Text = ex.Message;
                    }
                }
                else
                {
                    LabelOutput.Text = "This file could not be uploaded";
                }

            }
        }
    }
}