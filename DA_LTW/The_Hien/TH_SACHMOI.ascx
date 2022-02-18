<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_SACHMOI.ascx.cs" Inherits="The_Hien_TH_SACHMOI" %>
<link href="../Styles/StyleSheet.css" rel="stylesheet" />

<table class="sachmoi-auto-style1" align="center">
    <tr>
        <td style="text-align:center">
            <h3>Các loại sách mới</h3> </td>
    </tr>
    <tr>
        <td>
<asp:DataList ID="DataListSach_Moi" runat="server">
    <ItemTemplate>
        <table cellspacing="5" class="sachmoi-auto-style1">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/Sach/"+Eval("Hinh_minh_hoa") %>' />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Ten_sach") %>'></asp:HyperLink>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

        </td>
    </tr>
</table>


