<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminForgotPassword.aspx.cs" Inherits="StayBuddy_.net.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Create New Password</p>
    <p>
        Current Password</p>
    <p>
        <asp:TextBox ID="adminCurrentPassword" runat="server">Enter your current password</asp:TextBox>
    </p>
    <p>
        New Password</p>
    <p>
        <asp:TextBox ID="adminNewPassword" runat="server">Enter your new password</asp:TextBox>
    </p>
    <p>
        <asp:Button ID="adminResetPassword" runat="server" Text="Reset Password" />
    </p>
</asp:Content>