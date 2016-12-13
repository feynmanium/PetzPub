using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void viewCategoryDog(object sender, EventArgs e)
    {
        Session["animal"] = "Dog";
        Response.Redirect("Shop.aspx");
    }

    protected void viewCategoryCat(object sender, EventArgs e)
    {
        Session["animal"] = "Cat";
        Response.Redirect("Shop.aspx");
    }

    protected void viewCategoryBird(object sender, EventArgs e)
    {
        Session["animal"] = "Bird";
        Response.Redirect("Shop.aspx");
    }

    protected void viewCategorySmallAnimal(object sender, EventArgs e)
    {
        Session["animal"] = "Small Animal";
        Response.Redirect("Shop.aspx");
    }

    protected void viewAll(object sender, EventArgs e)
    {
        Session["animal"] = null;
        Response.Redirect("Shop.aspx");
    }
}
