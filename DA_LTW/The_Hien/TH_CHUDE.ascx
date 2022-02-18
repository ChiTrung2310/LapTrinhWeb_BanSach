<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TH_CHUDE.ascx.cs" Inherits="The_Hien_TH_CHUDE" %>
<link href="../Styles/StyleSheet.css" rel="stylesheet" />
<style>
    .chude-auto-style2 td{
        background-color:#f7941e;
        color:#333;
    }

    .chude-auto-style2 td a{
        color:#333;
    }
     .chude-auto-style1 {
        background-color:#000000;
        color:#ffffff;
    }
</style>
<asp:DataList ID="DataListChu_De" runat="server" Caption="<h4 class='chude-auto-style1'>Chủ đề sách</h4>" class="chude-auto-style2" >
    <ItemTemplate>
        <ul style="list-style-type:square; color:#F4CC70">
            <li>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Websites/Default.aspx?Mcd="+Eval("Mcd") %>' Text='<%# Eval("Ten_chu_de") %>'></asp:HyperLink>
            </li>
        </ul>
    </ItemTemplate>
</asp:DataList>


