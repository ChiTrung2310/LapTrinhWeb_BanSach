using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Net;
/// <summary>
/// Summary description for XL_DuLieu
/// </summary>
public class XL_DuLieu
{
    public static String chuoi_ket_noi = @"Server = LAPTOP-G0I3AISP; Database = QL_BANSACH_2 ; Integrated Security = SSPI";

    //Thực hiện các câu truy vấn Select
    public static DataTable Doc_bang(String cau_lenh)
    {
        try
        {
            SqlConnection ket_noi = new SqlConnection(chuoi_ket_noi);
            SqlDataAdapter bo_doc_ghi = new SqlDataAdapter(cau_lenh, chuoi_ket_noi);
            DataTable bang = new DataTable();
            bo_doc_ghi.Fill(bang);
            return bang;
        }
        catch
        {
            return null;
        }
    }
    //Thực hiện các câu truy vấn cập nhật dữ liệu: update, insert, delete 
    public static bool Thuc_hien_lenh(string cau_lenh)
    {
        try
        {
            SqlConnection ket_noi = new SqlConnection(chuoi_ket_noi);
            SqlCommand bo_lenh = new SqlCommand(cau_lenh, ket_noi);
            ket_noi.Open();
            bo_lenh.ExecuteNonQuery();
            ket_noi.Close();
            return true;
        }
        catch
        {
            return false;
        }
    }

    //Thực hiện các câu truy vấn thống kê dữ liệu: sum, count, max, min, avg 
    public static object Thuc_hien_lenh_tinh_toan(string cau_lenh)
    {
        try
        {
            SqlConnection ket_noi = new SqlConnection(chuoi_ket_noi);
            SqlCommand bo_lenh = new SqlCommand(cau_lenh, ket_noi);
            ket_noi.Open();
            object ket_qua = bo_lenh.ExecuteScalar();
            ket_noi.Close();
            return ket_qua;
        }
        catch
        {
            return null;
        }
    }

    public static DataTable Tao_gio_hang()
    {
        DataTable gio_hang = new DataTable();
        gio_hang.Columns.Add("Ms", typeof(int));
        gio_hang.Columns.Add("Ten_sach", typeof(string));
        gio_hang.Columns.Add("Don_gia", typeof(double));
        gio_hang.Columns.Add("Hinh_minh_hoa", typeof(string));
        gio_hang.Columns.Add("So_luong", typeof(int));
        gio_hang.Columns.Add("Thanh_tien", typeof(double), "So_luong*Don_gia");
        return gio_hang;
    }

    public static void SendMail(string toAddress, string subject, string body)
    {
        // Gmail của Admin 
        var fromAddress = "tanvongocuit@gmail.com";

        //Password Gmail của Admin
        const string fromPassword = "binbungbu";
        // Passing the values and make a email formate to display

        // Cấu hình gửi mail
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 465;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 200000;
        }
        //Gửi mail
        smtp.Send(fromAddress, toAddress, subject, body);
    }

    public XL_DuLieu()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}