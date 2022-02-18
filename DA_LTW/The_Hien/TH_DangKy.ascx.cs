using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class The_Hien_TH_DangKy : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        int dem_user_trung = int.Parse(XL_DuLieu.Thuc_hien_lenh_tinh_toan("SELECT COUNT(*) FROM KHACH_HANG WHERE Ten_dang_nhap = '" + txtUsername.Text + "'").ToString());
        if (dem_user_trung > 0)
        {
            Response.Write("<script>alert('Tên đăng nhập đã tồn tại')</script>");
            return;
        }
        else
        {
            bool kq_dk = XL_DuLieu.Thuc_hien_lenh("INSERT INTO KHACH_HANG(Ho_ten, Dia_chi,Dien_thoai,Ten_dang_nhap,Mat_khau,Ngay_sinh,Gioi_tinh,Email) values (N'" +
                txtHoTen.Text + "', N'" + txtDiaChi.Text + "','" + txtSDT.Text + "','" + txtUsername.Text + "','" + txtPassword.Text +
                "','" + DateTime.Parse(txtNgaySinh.Text).ToString("yyyy/MM/dd") + "'," + (rdbNam.Checked ? 1 : 0)
                + ",'" + txtEmail.Text + "')");
            if (kq_dk == true)
                Response.Write("<script>alert('Đăng ký thành công')</script>");
        }
    }
}