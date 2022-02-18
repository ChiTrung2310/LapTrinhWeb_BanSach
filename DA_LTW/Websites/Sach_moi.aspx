<%@ Page Title="" Language="C#" MasterPageFile="~/Websites/MasterPage.master" AutoEventWireup="true" CodeFile="Sach_moi.aspx.cs" Inherits="Websites_Sach_moi" %>


<%@ Register src="../The_Hien/DS_sach.ascx" tagname="DS_sach" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <title>Nổi bật</title>
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:DS_sach ID="DS_sach1" runat="server" />
</asp:Content>

