using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class The_Hien_GioHang : System.Web.UI.UserControl
{
    void hien_thi_gio_hang()
    {
        if (((DataTable)Session["gio_hang"]).Rows.Count == 0)
            Response.Redirect("Default.aspx");
        gdgiohang.DataSource = (DataTable)Session["gio_hang"];
        gdgiohang.DataBind();
        for (int i = 0; i < gdgiohang.Rows.Count; i++)
            gdgiohang.Rows[i].Cells[0].Text = (i + 1).ToString();
        gdgiohang.FooterRow.Cells[3].Text = "Tổng Thành Tiền:";
        double tongtien = double.Parse(((DataTable)Session["gio_hang"]).Compute("sum(Thanh_tien)", "").ToString());
        gdgiohang.FooterRow.Cells[5].Text = tongtien.ToString("#,###");
        if (Session["makh"].ToString() != "")
        {
            txthoten.Text = Session["hoten"].ToString();
            txtemail.Text = Session["email"].ToString();
            txtdiachi.Text = Session["diachi"].ToString();
            txtdienthoai.Text = Session["dienthoai"].ToString();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            hien_thi_gio_hang();
    }

    protected void gdgiohang_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gdgiohang.EditIndex = -1;
        hien_thi_gio_hang();
    }

    protected void gdgiohang_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        int ms = int.Parse(e.Keys[0].ToString());
        DataTable Gio_hang = (DataTable)Session["gio_hang"];
        for (int i = 0; i < Gio_hang.Rows.Count; i++)
        {
            if (int.Parse(Gio_hang.Rows[i]["Ms"].ToString()) == ms)
            {
                Gio_hang.Rows.RemoveAt(i);
                Gio_hang.AcceptChanges();
                hien_thi_gio_hang();
                Session["gio_hang"] = Gio_hang;
                Response.Redirect(Request.RawUrl);
            }
        }
    }

    protected void gdgiohang_RowEditing(object sender, GridViewEditEventArgs e)
    {
        if (e.NewEditIndex >= 0)
        {
            gdgiohang.EditIndex = e.NewEditIndex;
            hien_thi_gio_hang();
        }
    }

    protected void gdgiohang_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int ms = int.Parse(e.Keys[0].ToString());
        int soluong = 0;
        int.TryParse(((TextBox)gdgiohang.Rows[e.RowIndex].Cells[4].Controls[0]).Text, out soluong);
        if (soluong <= 0)
        {
            Response.Write("<script>alert('Số lượng phải lớn hơn 0')</script>");
        }
        else
        {
            DataTable Gio_hang = (DataTable)Session["gio_hang"];
            for (int i = 0; i < Gio_hang.Rows.Count; i++)
            {
                if (int.Parse(Gio_hang.Rows[i]["Ms"].ToString()) == ms)
                {
                    Gio_hang.Rows[i]["So_luong"] = soluong;
                    Gio_hang.AcceptChanges();
                    Session["gio_hang"] = Gio_hang;
                    gdgiohang.EditIndex = -1;
                    hien_thi_gio_hang();
                    Response.Redirect(Request.RawUrl);
                }
            }
        }
    }

    protected void btmuahang_Click(object sender, EventArgs e)
    {
        double tongtien = double.Parse(((DataTable)Session["gio_hang"]).Compute("sum(Thanh_tien)", "").ToString());
        DataTable Gio_hang = (DataTable)Session["gio_hang"];
        if (Gio_hang.Rows.Count > 0)
        {
            int Mkh = 0;
            if (Session["makh"].ToString() != "")
                Mkh = int.Parse(Session["makh"].ToString());
            string cau_lenh = "INSERT INTO DON_DAT_HANG(Mkh, Ho_ten, Dia_chi, Dien_thoai, Email, Ngay_dat_hang, Tri_gia, Da_giao_hang) values(" + Mkh.ToString() + ",N'" + txthoten.Text + "',N'" + txtdiachi.Text + "','" + txtdienthoai.Text + "','" + txtemail.Text + "','" + DateTime.Today + "','" + tongtien.ToString() + ",0)";
            XL_DuLieu.Thuc_hien_lenh(cau_lenh);
            DataTable bang_don_dat_hang = XL_DuLieu.Doc_bang("SELECT TOP 1 Sdh FROM DON_DAT_HANG ORDER BY Sdh DESC");
            int sdh = int.Parse(bang_don_dat_hang.Rows[0]["sdh"].ToString());
            cau_lenh = "INSERT INTO CT_DAT_HANG(Sdh,Ms, So_luong,Don_gia,Thanh_tien) VALUES";
            for (int i = 0; i < Gio_hang.Rows.Count; i++)
                cau_lenh += "(" + sdh.ToString() + "," + Gio_hang.Rows[i]["Ms"] + "," + Gio_hang.Rows[i]["So_luong"] + "," + Gio_hang.Rows[i]["Don_gia"] + "," + Gio_hang.Rows[i]["Thanh_tien"] + "),";
            cau_lenh = cau_lenh.Substring(0, cau_lenh.Length - 1);
            XL_DuLieu.Thuc_hien_lenh(cau_lenh);
            Response.Write("<script>alert('Bạn đã đặt hàng thành công, chúng tôi sẽ giao hàng trong vòng 24H')</scrript>");
            Session["gio_hang"] = XL_DuLieu.Tao_gio_hang();
        }
    }
}