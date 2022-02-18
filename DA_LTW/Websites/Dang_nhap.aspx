<%@ Page Title="" Language="C#" MasterPageFile="~/Websites/MasterPage.master" AutoEventWireup="true" CodeFile="Dang_nhap.aspx.cs" Inherits="Websites_Dang_nhap" %>

<%@ Register src="../The_Hien/TH_DangNhap.ascx" tagname="TH_DangNhap" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Đăng nhập</title>
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:TH_DangNhap ID="TH_DangNhap1" runat="server" />
</asp:Content>

