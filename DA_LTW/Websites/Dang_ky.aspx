<%@ Page Title="" Language="C#" MasterPageFile="~/Websites/MasterPage.master" AutoEventWireup="true" CodeFile="Dang_ky.aspx.cs" Inherits="Websites_Dang_ky" %>

<%@ Register src="../The_Hien/TH_DangKy.ascx" tagname="TH_DangKy" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Đăng ký</title>
    <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    
        
    
    <uc1:TH_DangKy ID="TH_DangKy4" runat="server" />
    
        
    
</asp:Content>

