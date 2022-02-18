using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class The_Hien_TH_MENU : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["makh"].ToString() != "")
        {
            lblCauChao.Text = "Chào bạn " + Session["tendn"].ToString();
            hyperLinkDangXuat.Visible = true;
            hyperLinkDangNhap.Visible = false;

        }
        else
        {
            lblCauChao.Text = "";
            hyperLinkDangXuat.Visible = false;
            hyperLinkDangNhap.Visible = true;
        }
    }
}
