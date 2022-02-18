<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_SACH_BANCHAY.ascx.cs" Inherits="The_Hien_TH_SACH_BANCHAY" %>
<link href="../Styles/StyleSheet.css" rel="stylesheet" />
<asp:DataList ID="dataListSachBanChay" runat="server" Caption="<h4 class='sach-ban-chay-tieu-de'>Sách bán chạy </h4>" Width="100%" Font-Size="Small">
    <ItemTemplate>
        <table class="sachmoi-auto-style1">
            <tr>
                <td>
                    <ul style="list-style-type:square; color:#FF9933;">
                        <li>
                            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF9933" Text='<%# Eval("Ten_sach") %>'></asp:HyperLink>
                        </li>
                    </ul>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>