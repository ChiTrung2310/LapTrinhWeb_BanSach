using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class The_Hien_TH_CHUDE : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataListChu_De.DataSource = XL_DuLieu.Doc_bang("select * from CHU_DE where Mcd in (select distinct Mcd from SACH)");
        DataListChu_De.DataBind();
    }
}