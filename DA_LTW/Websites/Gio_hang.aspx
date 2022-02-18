<%@ Page Title="" Language="C#" MasterPageFile="~/Websites/MasterPage.master" AutoEventWireup="true" CodeFile="Gio_hang.aspx.cs" Inherits="Websites_Gio_hang" %>

<%@ Register src="../The_Hien/GioHang.ascx" tagname="GioHang" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:GioHang ID="GioHang1" runat="server" />
</asp:Content>

