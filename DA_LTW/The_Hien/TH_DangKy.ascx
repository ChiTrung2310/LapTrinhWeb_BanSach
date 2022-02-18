<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_DangKy.ascx.cs" Inherits="The_Hien_TH_DangKy" %>

<style type="text/css">
    .dangky-auto-style1{
        font-size:small;
        margin-top:10px;
    }

    .dangky-auto-style2 {
        text-align: right;
    }
    .dangky-auto-style5 {
        text-align: center;
    }

    .dangky-pad{
        padding:5px;
    }

</style>

<table cellpadding="5" cellspacing="5" class='dangky-auto-style1' align="center" style="width:100%">
    <tr>
        <td class="dangky-auto-style2">Họ tên</td>
        <td>
            <asp:TextBox ID="txtHoTen" runat="server" ToolTip="Hãy nhập họ tên" CssClass="dangky-pad"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="Bạn chưa nhập họ tên" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="dangky-auto-style2">Địa chỉ</td>
        <td>
            <asp:TextBox ID="txtDiaChi" runat="server" TextMode="MultiLine" ToolTip="Hãy nhập địa chỉ" CssClass="dangky-pad"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="dangky-auto-style2">Điện thoại</td>
        <td>
            <asp:TextBox ID="txtSDT" runat="server" ToolTip="Hãy nhập số điện thoại" CssClass="dangky-pad"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSDT" ErrorMessage="Bạn phải nhập số điện thoại" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="dangky-auto-style2">Tên đăng nhập</td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" ToolTip="Hãy nhập username" CssClass="dangky-pad"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="Bạn chưa nhập Username" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="dangky-auto-style2">Mật khẩu</td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" ToolTip="Hãy nhập mật khẩu" CssClass="dangky-pad"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator" Display="Dynamic" ForeColor="Red">Bạn chưa nhập Password</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="dangky-auto-style2">Nhập lại mật khẩu</td>
        <td>
            <asp:TextBox ID="txtRePassword" runat="server" ToolTip="Nhập lại mật khẩu" CssClass="dangky-pad"></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRePassword" ErrorMessage="Mật khẩu không khớp" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="dangky-auto-style2">Ngày sinh</td>
        <td>
            <asp:TextBox ID="txtNgaySinh" runat="server" ToolTip="Hãy nhập ngày sinh" CssClass="dangky-pad"></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtNgaySinh" ErrorMessage="Ngày sinh không hợp lệ" Operator="DataTypeCheck" Type="Date" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="dangky-auto-style2">Giới tính</td>
        <td>
            <asp:RadioButton ID="rdbNam" runat="server" Checked="True" GroupName="GioiTinh" Text="Nam" />
&nbsp;<asp:RadioButton ID="rdbNu" runat="server" GroupName="GioiTinh" Text="Nữ" />
        </td>
    </tr>
    <tr>
        <td class="dangky-auto-style2">Email</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" ToolTip="Hãy nhập email" CssClass="dangky-pad"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="dangky-auto-style5" colspan="2">
            <asp:Button ID="btnDangKy" runat="server" OnClick="btnDangKy_Click" Text="Đăng Ký" ForeColor="Red" CssClass="dangky-pad" />
        </td>
    </tr>
</table>

