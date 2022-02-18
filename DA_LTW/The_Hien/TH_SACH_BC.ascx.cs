using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class The_Hien_TH_SACH_BC : System.Web.UI.UserControl
{
    protected void Hien_thi_Bang_Sach()
    {
        String cau_lenh_sql = "select Ms, Ten_sach, Don_gia, Mo_ta, Hinh_minh_hoa from SACH";
        DataTable bang_sach = XL_DuLieu.Doc_bang(cau_lenh_sql);
        grdBanSach.DataSource = bang_sach;
        grdBanSach.DataBind();
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Hien_thi_Bang_Sach();
    }


    protected void grdBanSach_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdBanSach.PageIndex = e.NewPageIndex;
        Hien_thi_Bang_Sach();
    }

}


