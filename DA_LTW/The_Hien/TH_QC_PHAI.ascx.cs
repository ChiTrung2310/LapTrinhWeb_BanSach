using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class The_Hien_TH_QC_PHAI : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            grvQuangCao.DataSource = XL_DuLieu.Doc_bang("select Hinh_Minh_Hoa, HREF from QUANG_CAO where Ngay_bat_dau<=GETDATE() and Ngay_het_han>=GETDATE()");
            grvQuangCao.DataBind();
        }
    }
}