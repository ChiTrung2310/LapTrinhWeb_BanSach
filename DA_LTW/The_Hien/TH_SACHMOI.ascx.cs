using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class The_Hien_TH_SACHMOI : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Request.QueryString["Mcd"] == null)
            {
                DataListSach_Moi.DataSource = XL_DuLieu.Doc_bang("select top 3 * from sach order by Ngay_cap_nhat desc");
                DataListSach_Moi.DataBind();
            }
            else
            {
                int mcd = int.Parse(Request.QueryString["Mcd"].ToString());
                DataListSach_Moi.DataSource = XL_DuLieu.Doc_bang("select top 3 * from sach where Mcd = '" + mcd + "'order by Ngay_cap_nhat desc");
                DataListSach_Moi.DataBind();
            }
        }
    }
}