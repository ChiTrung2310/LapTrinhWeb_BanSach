<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_DangNhap.ascx.cs" Inherits="The_Hien_TH_DangNhap" %>


<style type="text/css">
    .dangnhap-auto-style1 {
      color:#333;
    }

    .dangnhap-auto-style2 {
        text-align: center;
    }

    .dangnhap-pad{
        padding:5px;
    }

</style>


<table cellpadding="5" cellspacing="5" class="dangnhap-auto-style1" style="border-style:groove;margin-top:50px;" align="center">
    <tr>
        <td colspan="2" class="dangnhap-auto-style1" style="text-align:center"><strong>Đăng Nhập</strong>&nbsp;</td>
    </tr>
    <tr>
        <td><h4 style="font-size:small">Username<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="*" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </h4>
        </td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="dangnhap-pad"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td><h4 style="font-size:small">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </h4>
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="dangnhap-pad"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="2" class="dangnhap-auto-style2">
            <asp:Button ID="btnDangNhap" runat="server" OnClick="btnDangNhap_Click" Text="Đăng nhập" ForeColor="#FF9900" CssClass="dangnhap-pad" />
            <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" ForeColor="#FF9900" CssClass="dangnhap-pad" />
        </td>
    </tr>
</table>

