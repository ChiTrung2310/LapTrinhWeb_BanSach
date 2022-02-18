using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Websites_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["dangxuat"] == "1" && Session["makh"].ToString() != "")
        {
            Session["makh"] = "";
            Session["tendn"] = "";
            Session["email"] = "";
        }
    }
}