<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminForgotPassword.aspx.cs" Inherits="StayBuddy_.net.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Create New Password</p>
    <p>
        Reset your password</p>
    <p>
        Current Password</p>
    <p>
        <asp:TextBox ID="adminCurrentPassword" placeholder="Enter your current password" runat="server"></asp:TextBox>
    </p>
    <p>
        New Password</p>
    <p>
        <asp:TextBox ID="adminNewPassword" placeholder="Enter your new password" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="adminResetPassword" runat="server" Text="Reset Password" OnClick="adminResetPassword_Click" />
    </p>
    <p>
        <asp:LinkButton ID="adminBackToLogin" runat="server" OnClick="adminBackToLogin_Click">Back to Login</asp:LinkButton>
    </p>
</asp:Content>