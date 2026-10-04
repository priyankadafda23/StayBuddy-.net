<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="UserForgotPassword.aspx.cs" Inherits="StayBuddy_.net.WebForm4" %>
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
        <asp:TextBox ID="userCurrentPassword" placeholder="Enter your current password" runat="server"></asp:TextBox>
    </p>
    <p>
        New Password</p>
    <p>
        <asp:TextBox ID="userNewPassword" placeholder="Enter your new password" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="userResetPassword" runat="server" Text="Reset Password" OnClick="userResetPassword_Click" />
    </p>
    <p>
        <asp:LinkButton ID="backToLogin" runat="server" OnClick="backToLogin_Click">Back to Login</asp:LinkButton>
    </p>
</asp:Content>
