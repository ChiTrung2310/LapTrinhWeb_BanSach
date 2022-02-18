using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class The_Hien_DS_sach : System.Web.UI.UserControl
{
    static PagedDataSource p = new PagedDataSource();
    public static int trang_hh = 0;
    protected void Hien_Thi()
    {
        string cau_lenh = "SELECT Ms,Ten_sach,Mo_ta,Hinh_minh_hoa,Don_gia FROM SACH";
        DataTable bang_sach = XL_DuLieu.Doc_bang(cau_lenh);
        p.DataSource = bang_sach.DefaultView;
        p.PageSize = 8;
        p.CurrentPageIndex = trang_hh;
        p.AllowPaging = true;
        btdau.Enabled = bttrai.Enabled = btphai.Enabled = btcuoi.Enabled = true;
        if (p.IsFirstPage)
            btdau.Enabled = bttrai.Enabled = false;
        if (p.IsLastPage)
            btcuoi.Enabled = btphai.Enabled = false;
        txtrang.Text = (trang_hh + 1) + "/" + p.PageCount;
        datalistCT_Sach.DataSource = p;
        datalistCT_Sach.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
            Hien_Thi();
    }

    protected void btdau_Click(object sender, EventArgs e)
    {
        trang_hh = 0;
        Hien_Thi();
    }

    protected void bttrai_Click(object sender, EventArgs e)
    {
        trang_hh--;
        Hien_Thi();
    }

    protected void btphai_Click(object sender, EventArgs e)
    {
        trang_hh++;
        Hien_Thi();
    }

    protected void btcuoi_Click(object sender, EventArgs e)
    {
        trang_hh = p.PageCount - 1;
        Hien_Thi();
    }


    protected void datalistCT_Sach_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "chonmua")
        {
            DataTable bang_gio_hang = (DataTable)Session["gio_hang"];
            int ms = int.Parse(e.CommandArgument.ToString());
            bool mua_them_sach_da_dat = false;
            TextBox txtsl = (TextBox)e.Item.FindControl("txtsl");
           
            for (int i = 0; i < bang_gio_hang.Rows.Count; i++)
            {
                if (int.Parse(bang_gio_hang.Rows[i]["Ms"].ToString()) == ms)
                {
                    bang_gio_hang.Rows[i]["So_luong"] = int.Parse(bang_gio_hang.Rows[i]["So_luong"].ToString()) + int.Parse(txtsl.Text);
                    mua_them_sach_da_dat = true;
                    break;
                }
            }
            if (mua_them_sach_da_dat == false)
            {
                DataTable bang_sach = XL_DuLieu.Doc_bang("SELECT Ms, Ten_sach, Hinh_minh_hoa, Don_gia FROM SACH WHERE Ms = " + ms.ToString());
                DataRow r = bang_gio_hang.NewRow();
                r["Ms"] = bang_sach.Rows[0]["Ms"];
                r["Ten_sach"] = bang_sach.Rows[0]["Ten_Sach"];
                r["Hinh_minh_hoa"] = bang_sach.Rows[0]["Hinh_minh_hoa"];
                r["Don_gia"] = bang_sach.Rows[0]["Don_gia"];
                r["So_luong"] = int.Parse(txtsl.Text);
                bang_gio_hang.Rows.Add(r);
            }
            bang_gio_hang.AcceptChanges();
            Session["gio_hang"] = bang_gio_hang;
            Response.Redirect(Request.RawUrl);
        }
    }
}
