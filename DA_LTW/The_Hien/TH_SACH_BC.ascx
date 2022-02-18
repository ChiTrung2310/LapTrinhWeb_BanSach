<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_SACH_BC.ascx.cs" Inherits="The_Hien_TH_SACH_BC" %>


<table cellpadding="5" cellspacing="5" align="center" >
    <tr>
        <td style="width:100%">

            <asp:GridView ID="grdBanSach" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" Caption="<h3 class='auto-style3'>Giới Thiệu Sách</h3>" CellPadding="3" CellSpacing="3" OnPageIndexChanging="grdBanSach_PageIndexChanging" PageSize="3" Width="300px">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table cellpadding="3" cellspacing="3" class="auto-style1">
                                <tr>
                                    <td rowspan="2">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/Sach/"+Eval("Hinh_minh_hoa") %>' />
                                    </td>
                                    <td>Tên Sách:<asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Ms") %>' Text='<%# Eval("Ten_sach") %>' CommandName="ChonTenSach"></asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Đơn giá:<asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text='<%# double.Parse(Eval("Don_gia").ToString()).ToString("#,### VNĐ") %>' style="color: #FF0000"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
 

        </td>
          </tr>
</table>

 

