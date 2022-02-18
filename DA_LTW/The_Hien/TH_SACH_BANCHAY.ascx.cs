using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class The_Hien_TH_SACH_BANCHAY : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dataListSachBanChay.DataSource = XL_DuLieu.Doc_bang("select top 5 * from SACH order by So_luong_ban desc");
            dataListSachBanChay.DataBind();
        }
    }
}