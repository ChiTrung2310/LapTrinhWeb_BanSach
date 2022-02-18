using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
public partial class The_Hien_TH_DangNhap : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        DataTable tb = XL_DuLieu.Doc_bang("select * from KHACH_HANG where Ten_dang_nhap ='" + txtUsername.Text + "' and Mat_khau='" + txtPassword.Text + "'");
        if (tb.Rows.Count > 0)
        {
            Session["makh"] = tb.Rows[0]["Mkh"].ToString();
            Session["hoten"] = tb.Rows[0]["Ho_ten"].ToString();
            Session["tendn"] = tb.Rows[0]["Ten_dang_nhap"].ToString();
            Session["email"] = tb.Rows[0]["Email"].ToString();
            Session["diachi"] = tb.Rows[0]["Dia_chi"].ToString();
            Session["dienthoai"] = tb.Rows[0]["Dien_thoai"].ToString();
            Response.Redirect("default.aspx");

        }
        else
            Response.Write("<script>alert('Thông tin đăng nhập sai')</script");
    }

    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        Response.Redirect("DangKy.aspx");
    }

}