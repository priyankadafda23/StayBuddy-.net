<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="StayBuddy_.net.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Welcome Back</p>
    <p>
        Login to continue</p>
    <p>
        Email</p>
    <p>
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
    </p>
    <p>
        Password</p>
    <p>
        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:CheckBox ID="adminRememberMe" runat="server" Text="Remember me" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="adminForgotPassword" runat="server">Forgot Password?</asp:LinkButton>
    </p>
    <p>
        <asp:Button ID="adminLogin" runat="server" Text="Login" />
    </p>
</asp:Content>
