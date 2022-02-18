using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class The_Hien_TH_GIOHANG : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable bang_giohang = (DataTable)Session["gio_hang"];
        double tong_tien = 0;
        for (int i = 0; i < bang_giohang.Rows.Count; i++)
            tong_tien += int.Parse(bang_giohang.Rows[i]["So_luong"].ToString()) * double.Parse(bang_giohang.Rows[i]["Don_gia"].ToString());
        lblTien.Text = tong_tien.ToString("#,### VND");
    }
}