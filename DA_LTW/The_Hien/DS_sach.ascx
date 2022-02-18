<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DS_sach.ascx.cs" Inherits="The_Hien_DS_sach" %>

<style>
    .ds1-auto-style{
        text-align:center;
        color:#333;
    }
    .ds2-auto-style{
        text-align:center;
    }
    .ds3-auto-style{
        padding:5px;
        text-align:center;
    }
    .auto-style1 {
        width: 202px;
    }
</style>
<asp:DataList ID="datalistCT_Sach" runat="server" Caption="<h3 class='ds1-auto-style'>Bookstore</h3>" RepeatColumns="2" OnItemCommand="datalistCT_Sach_ItemCommand" HorizontalAlign="Center">
    <ItemTemplate>
        <table cellpadding="2" cellspacing="2">
            <tr>
                <td colspan="2">
                    <asp:HyperLink ID="hypTenSach" runat="server" Text='<%# Eval("Ten_sach").ToString().Length>50?Eval("Ten_sach").ToString().Substring(0,50)+"...":Eval("Ten_sach").ToString() %>'></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/Sach/"+Eval("Hinh_minh_hoa") %>' />
                </td>
                <td class="auto-style1">
                    Mã Sách:<asp:Label ID="Label1" runat="server" Text='<%# Eval("Ms") %>'></asp:Label>
                    <br />
                    Giá Bán:<asp:Label ID="lblgiaban" runat="server" Text='<%# double.Parse(Eval("Don_gia").ToString()).ToString("#,### VNĐ") %>'></asp:Label>
                    <br />
                    <asp:TextBox ID="txtSo_Luong_Mua" runat="server" Width="50px" CssClass="ds3-auto-style" Height="16px">1</asp:TextBox>
                    <asp:Button ID="btnChonMua" runat="server" Text="Chọn mua" CommandArgument='<%# Eval("Ms") %>' CommandName="chonmua" CssClass="ds3-auto-style" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSo_Luong_Mua" Display="Dynamic" ErrorMessage="Phải nhập vào số lượng" ForeColor="#E6E154"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSo_Luong_Mua" Display="Dynamic" ErrorMessage="Sốn lượng phải là số nguyên" ForeColor="#E6E154" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtSo_Luong_Mua" Display="Dynamic" ErrorMessage="Số lượng phải &gt; 0" ForeColor="#E6E154" Operator="GreaterThan" ValueToCompare="0"></asp:CompareValidator>
                    <br />
                    
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
<div class="ds2-auto-style">
    <asp:Button ID="btdau" runat="server" OnClick="btdau_Click" Text="&lt;&lt;" CssClass="ds3-auto-style" Font-Bold="True" ForeColor="#FF9900" />
    <asp:Button ID="bttrai" runat="server" OnClick="bttrai_Click" Text="&lt;" CssClass="ds3-auto-style" Font-Bold="True" ForeColor="#FF9900" />
    <asp:TextBox ID="txtrang" runat="server" Width="101px" CssClass="ds3-auto-style" Font-Bold="True" ForeColor="Red" ToolTip="Số trang hiện thời"></asp:TextBox>
    <asp:Button ID="btphai" runat="server" OnClick="btphai_Click" Text="&gt;" CssClass="ds3-auto-style" Font-Bold="True" ForeColor="#FF9900" />
    <asp:Button ID="btcuoi" runat="server" OnClick="btcuoi_Click" Text="&gt;&gt;" CssClass="ds3-auto-style" Font-Bold="True" ForeColor="#FF9900" />
</div>
