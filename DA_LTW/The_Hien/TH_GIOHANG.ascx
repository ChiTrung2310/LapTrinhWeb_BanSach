<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_GIOHANG.ascx.cs" Inherits="The_Hien_TH_GIOHANG" %>
<link href="../Styles/StyleSheet.css" rel="stylesheet" />

<style type="text/css">

    .giohang-auto-style1{
        font-size:small;
    }

    .giohang-auto-style2 {
        background-color: #FFFF66;
        margin-left:5px;
    }
    .giohang-auto-style3 {
        margin-left:5px;
    }
</style>

<table cellspacing="5" style="width:100%;border-style:groove">
    <tr>
        <td style="background-color: #FFFF66;height:35px">
            <img class="giohang-auto-style2" src="../images/Gio_hang/bag.png" />
            <asp:HyperLink ID="hypGio_Hang" CssClass="giohang-auto-style1" runat="server" NavigateUrl="~/Websites/Gio_hang.aspx">Giỏ hàng của bạn</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td style="background-color: #FFFF66;height:35px">
            <img class="giohang-auto-style3" src="../images/Gio_hang/images.png" /> <asp:Label ID="lblTien" CssClass="giohang-auto-style1" runat="server" Text="VNĐ"></asp:Label>
        </td>
    </tr>
</table>




