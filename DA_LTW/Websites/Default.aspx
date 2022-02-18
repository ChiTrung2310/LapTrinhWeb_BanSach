<%@ Page Title="" Language="C#" MasterPageFile="~/Websites/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Websites_Default" %>

<%@ Register src="../The_Hien/TH_SACHMOI.ascx" tagname="TH_SACHMOI" tagprefix="uc1" %>

<%@ Register src="../The_Hien/TH_SACH_BC.ascx" tagname="TH_SACH_BC" tagprefix="uc2" %>

<%@ Register src="../The_Hien/TH_QC_BODY.ascx" tagname="TH_QC_BODY" tagprefix="uc3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Trang Chủ</title>
   <link rel="shortcut icon" type="image/x-icon" href="/images/favicon.ico">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        width: 100%;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style5">
    <tr>
        <td>
            <table cellpadding="0" cellspacing="0" class="auto-style6">
                <tr>
                    <td style="vertical-align:top">
                        <table cellpadding="0" cellspacing="0" class="auto-style5">
                            <tr>
                                <td>
                                    <uc1:TH_SACHMOI ID="TH_SACHMOI1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3" style="vertical-align:bottom">
                                    <uc3:TH_QC_BODY ID="TH_QC_BODY1" runat="server" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

