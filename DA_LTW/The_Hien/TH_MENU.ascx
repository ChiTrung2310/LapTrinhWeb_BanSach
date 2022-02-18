<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_MENU.ascx.cs" Inherits="The_Hien_TH_MENU" %>
<link href="../Styles/StyleSheet.css" rel="stylesheet" />

<style>
    .menu-auto-style1{
        background:#f7941e;
        height:50px;
    }

</style>
<table align="center" cellpadding="5" cellspacing="0" class="menu-auto-style1">
    <tr>
        <td style="font-size:small">
            <asp:Label ID="lblCauChao" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
        </td>
        <td style="text-align:right">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Websites/Default.aspx">Trang chủ</asp:HyperLink>
            &nbsp;|
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Websites/Gioi_thieu.aspx">Giới thiệu</asp:HyperLink>
            &nbsp;|
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Websites/Dia_diem.aspx">Địa điểm</asp:HyperLink>
            &nbsp;|
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Websites/Lien_he.aspx">Liên hệ</asp:HyperLink>
            &nbsp;|
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Websites/Sach_moi.aspx">Store</asp:HyperLink>
            &nbsp;|
            <asp:HyperLink ID="hyperLinkDangKy" runat="server" NavigateUrl="~/Websites/Dang_ky.aspx">Đăng ký</asp:HyperLink>
            &nbsp;|
            <asp:HyperLink ID="hyperLinkDangNhap" runat="server" NavigateUrl="~/Websites/Dang_nhap.aspx">Đăng nhập</asp:HyperLink>
        &nbsp;<asp:HyperLink ID="hyperLinkDangXuat" runat="server" NavigateUrl="~/Websites/Default.aspx?dangxuat=1">Đăng xuất</asp:HyperLink>
        </td>
    </tr>
</table>

