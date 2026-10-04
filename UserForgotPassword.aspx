<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="UserForgotPassword.aspx.cs" Inherits="StayBuddy_.net.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Create New Password</p>
    <p>
        Current Password</p>
    <p>
        <asp:TextBox ID="userCurrentPassword" runat="server">Enter your current password</asp:TextBox>
    </p>
    <p>
        New Password</p>
    <p>
        <asp:TextBox ID="userNewPassword" runat="server">Enter your new password</asp:TextBox>
    </p>
    <p>
        <asp:Button ID="userResetPassword" runat="server" Text="Reset Password" />
    </p>
</asp:Content>
