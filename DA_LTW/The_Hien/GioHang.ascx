<%@ Control Language="C#" AutoEventWireup="true" CodeFile="GioHang.ascx.cs" Inherits="The_Hien_GioHang" %>
<style>
    .giohang-auto1{
        text-align:center;
    }
</style>

<table align="center">
    <tr>
        <td colspan="2">
            <asp:GridView ID="gdgiohang" runat="server" AutoGenerateColumns="False" ShowFooter="True" Width="100%" OnRowCancelingEdit="gdgiohang_RowCancelingEdit" OnRowDeleting="gdgiohang_RowDeleting" OnRowEditing="gdgiohang_RowEditing" OnRowUpdating="gdgiohang_RowUpdating" DataKeyNames="ms">
                <Columns>
                    <asp:BoundField HeaderText="STT" />
                    <asp:BoundField DataField="Ms" HeaderText="Mã Sách" ReadOnly="True" />
                    <asp:BoundField DataField="Ten_sach" HeaderText="Tên Sách" ReadOnly="True" />
                    <asp:BoundField DataField="Don_gia" DataFormatString="{0:#,###}" HeaderText="Đơn Giá" ReadOnly="True" />
                    <asp:BoundField DataField="So_luong" HeaderText="Số Lượng" />
                    <asp:BoundField DataField="Thanh_tien" DataFormatString="{0:#,###}" HeaderText="Thành Tiền" />
                    <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel1.png" DeleteImageUrl="~/images/delete.jpg" EditImageUrl="~/images/edit--v1.png" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/images/save1.png" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>Name:</td>
        <td>
            <asp:TextBox ID="txthoten" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Addres:</td>
        <td>
            <asp:TextBox ID="txtdiachi" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Phone:</td>
        <td>
            <asp:TextBox ID="txtdienthoai" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Email:</td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="giohang-auto1">
            <asp:Button ID="btmuahang" runat="server" Text="Mua Hàng" OnClick="btmuahang_Click" />
        </td>
    </tr>
</table>
