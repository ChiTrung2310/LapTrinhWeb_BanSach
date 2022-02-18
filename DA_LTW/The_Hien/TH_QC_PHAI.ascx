<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_QC_PHAI.ascx.cs" Inherits="The_Hien_TH_QC_PHAI" %>
<link href="../Styles/StyleSheet.css" rel="stylesheet" />
<style type="text/css">
    .quangcao-auto-style1 {
        text-align: center;
    }
</style>
<asp:GridView ID="grvQuangCao" runat="server" AutoGenerateColumns="False" Caption="&lt;h4 class='qc-phai'&gt;Quảng Cáo&lt;/h4&gt;" Font-Size="Small" ForeColor="#009933" showHeader="false" Width="100%" BorderColor="#FF9900">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Width="100%" ImageUrl='<%# "~/images/Quang_cao/"+Eval("Hinh_Minh_Hoa")+".gif" %>' NavigateUrl='<%# Eval("HREF") %>'>HyperLink</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>